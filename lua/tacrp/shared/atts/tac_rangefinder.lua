ATT.PrintName = "Rangefinder"
ATT.Icon = Material("entities/tacrp_att_tac_rangefinder.png", "mips smooth")
ATT.Description = "Measures distance to point of aim and bullet drop."
ATT.Pros = {"Display distance and damage at range", "Bullet drop visualization in sights"}

ATT.Model = "models/weapons/tacint/addons/rangefinder_mounted.mdl"
ATT.Scale = 1

ATT.Category = "tactical"

ATT.Rangefinder = true
ATT.CanToggle = true

local lastrangefinder = 0
local rftime = 1 / 10
local rawdist = 0
local mat_rf = Material("tacrp/hud/rangefinder.png", "mips smooth")
function ATT.TacticalDraw(self)
    local txt = "NO RTN"
    local txt2 = ""
    local txt3 = ""
    local txt4 = ""

    if lastrangefinder + rftime < CurTime() then
        local tr = util.TraceLine({
            start = self:GetMuzzleOrigin(),
            endpos = self:GetMuzzleOrigin() + (self:GetShootDir():Forward() * 50000),
            mask = MASK_SHOT,
            filter = self:GetOwner()
        })

        rawdist = (tr.HitPos - tr.StartPos):Length()
        local dist
        if GetConVar("tacrp_metricunit"):GetBool() then
            dist = math.min(math.Round(rawdist * TacRP.HUToM, 0), 99999)
            txt = tostring(dist) .. "m"
        else
            dist = math.min(math.Round(rawdist, 0), 99999)
            txt = tostring(dist) .. "HU"
        end

        if GetConVar("tacrp_physbullet"):GetBool() then
            -- Not totally accurate due to hitscan kicking in up close
            local t = math.Round(rawdist / self:GetValue("MuzzleVelocity"), 2)
            txt2 = tostring(math.Round(rawdist / self:GetValue("MuzzleVelocity"), 2)) .. "s"
            if t > 0 and t < 1 then txt2 = string.sub(txt2, 2) end
        else
            -- Not totally accurate due to hitscan kicking in up close
            if !GetConVar("tacrp_metricunit"):GetBool() then
                txt2 = tostring(math.min(math.Round(rawdist * TacRP.HUToM, 0), 99999)) .. "m"
            else
                txt2 = tostring(math.min(math.Round(rawdist, 0), 99999)) .. "HU"
            end
        end

        local edmg = self:GetDamageAtRange(dist)
        edmg = math.ceil(edmg)

        txt3 = tostring(edmg) .. "DMG"

        for _ = 0, 12 - string.len(txt3) - string.len(txt) do
            txt = txt .. " "
        end

        txt = txt .. txt3

        local mult = self:GetBodyDamageMultipliers() --self:GetValue("BodyDamageMultipliers")
        local min = math.min(unpack(mult))

        if edmg * min >= 100 then
            txt4 = "LETHAL"
        elseif edmg * mult[HITGROUP_LEFTLEG] >= 100 then
            txt4 = "LEGS"
        elseif edmg * mult[HITGROUP_LEFTARM] >= 100 then
            txt4 = "ARMS"
        elseif edmg * mult[HITGROUP_STOMACH] >= 100 then
            txt4 = "STMCH"
        elseif edmg * mult[HITGROUP_CHEST] >= 100 then
            txt4 = "CHEST"
        elseif edmg * mult[HITGROUP_HEAD] >= 100 then
            txt4 = "HEAD"
        else
            txt4 = tostring(math.ceil(100 / edmg)) .. (self:GetValue("Num") > 1 and "PTK" or "STK")
        end

        for _ = 0, 12 - string.len(txt4) - string.len(txt2) do
            txt2 = txt2 .. " "
        end

        txt2 = txt2 .. txt4

        cached_txt = txt
        cached_txt2 = txt2
        lastrangefinder = CurTime()
    else
        txt = cached_txt
        txt2 = cached_txt2
    end

    local scrw = ScrW()
    local scrh = ScrH()

    local w = ScreenScale(100)
    local h = ScreenScale(50)

    local x = (scrw - w) / 2
    local y = (scrh - h) * 5 / 6

    surface.SetMaterial(mat_rf)
    surface.SetDrawColor(255, 255, 255, 100)
    surface.DrawTexturedRect(x, y, w, h)

    surface.SetFont("TacRP_HD44780A00_5x8_10")
    -- local tw = surface.GetTextSize(txt)
    surface.SetTextPos(x + ScreenScale(3), y + ScreenScale(12))
    surface.SetTextColor(0, 0, 0)
    surface.DrawText(txt)

    -- local tw2 = surface.GetTextSize(txt2)
    surface.SetTextPos(x + ScreenScale(3), y + ScreenScale(22))
    surface.SetTextColor(0, 0, 0)
    surface.DrawText(txt2)
end

local last_laze_time = 0
local last_laze_dist = 0
local laze_interval = 0.25
local tilt = 0
local ccip_v = 0
local no_ccip = true
local dropalpha = 0
function ATT.TacticalCrosshair(self, x, y, spread, sway)

    if !GetConVar("tacrp_physbullet"):GetBool() then return end

    if self:GetNextPrimaryFire() + 0.1 > CurTime() then
        dropalpha = 0
    elseif self:IsInScope() and (self:GetValue("ScopeOverlay") or !self:GetReloading()) then
        dropalpha = math.Approach(dropalpha, self:GetSightAmount() ^ 2, FrameTime() * 1)
    else
        dropalpha = math.Approach(dropalpha, 0, FrameTime() * 10)
    end
    if dropalpha == 0 then return end

    if last_laze_time + laze_interval <= CurTime() then
        local d = 1000000
        local tr = util.TraceLine({
            start = self:GetMuzzleOrigin(),
            endpos = self:GetMuzzleOrigin() + (self:GetShootDir():Forward() * d),
            mask = MASK_SHOT,
            filter = self:GetOwner()
        })

        last_laze_dist = tr.Fraction * d
        last_laze_time = CurTime()

        tilt = (math.NormalizeAngle(self:GetShootDir().p) / 90)

        local ccip = self:GetCCIP()

        if !ccip then
            ccip_v = 0
            no_ccip = true
        else
            cam.Start3D(nil, nil, self.ViewModelFOV)
            ccip_v = (ccip.HitPos:ToScreen().y - (ScrH() / 2)) * self:GetCorVal()
            -- local localhp = mdl:WorldToLocal(ccip.HitPos)
            -- local localpos = mdl:WorldToLocal(pos)
            -- ccip_v = (localpos.z - localhp.z)
            cam.End3D()
            no_ccip = false
        end
        last_ccip_time = CurTime()
    end

    for i = 1, math.Round((ccip_v - 5) / 5) do
        surface.DrawCircle(x, y + i * 5, 1, 255, 255, 255, dropalpha * 75)
    end

    -- surface.DrawCircle(x, y + ccip_v, 6, 255, 255, 255, dropalpha * 120)
    -- surface.DrawCircle(x, y + ccip_v, 8, 255, 255, 255, dropalpha * 120)
    surface.SetDrawColor(255, 255, 255, dropalpha * 150)
    surface.DrawLine(x - 7, y - 7 + ccip_v, x + 7, y + 7 + ccip_v)
    surface.DrawLine(x - 7, y + 7 + ccip_v, x + 7, y - 7 + ccip_v)

    -- surface.DrawCircle(x, y, spread - 1, 255, 255, 255, circlealpha * 75)
    -- surface.DrawCircle(x, y, spread + 1, 255, 255, 255, circlealpha * 75)
end