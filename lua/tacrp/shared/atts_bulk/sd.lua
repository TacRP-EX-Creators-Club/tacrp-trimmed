local ATT = {}

-------------------------------------------------
ATT = {}
ATT.PrintName = "Marksman"
ATT.FullName = "Marksman Trigger"
ATT.Icon = Material("entities/tacrp_att_trigger_semi.png", "mips smooth")
ATT.Description = "Trigger that sacrfices automatic fire for precision."
ATT.Pros = {"stat.damage", "stat.spread", "rating.control"}
ATT.Cons = {"att.procon.semi", "stat.rpm"}

ATT.InvAtt = "trigger_semi"
ATT.Category = {"trigger_dual_uzis"}

ATT.SortOrder = 0.1

ATT.Override_Firemodes = {1}

ATT.Add_RecoilStability = 0.3
ATT.Mult_RecoilKick = 0.75
ATT.Mult_RecoilSpreadPenalty = 0.85
ATT.Mult_Spread = 0.75

ATT.Add_Damage_Max = 3
ATT.Add_Damage_Min = 2

ATT.Mult_RPM = 0.75

TacRP.LoadAtt(ATT, "trigger_dual_uzis_semi")

-------------------------------------------------
ATT = {}
ATT.PrintName = "3.5x Scope"
ATT.FullName = "M1 Carbine 3.5x24 Scope"
ATT.Icon = Material("entities/tacrp_att_optic_carbinescope.png", "mips smooth")
ATT.Description = "Optical scope with specialized mount for the M1 Carbine."
ATT.Pros = {"att.zoom.3.5"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = "optic_m1"

ATT.SortOrder = 3.5

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3.5

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_m1_scope")

-------------------------------------------------
ATT = {}
ATT.PrintName = "4x Scope"
ATT.FullName = "De Lisle 4x24 Scope"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "Optical scope with specialized mount for the De Lisle."
ATT.Pros = {"att.zoom.4"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = "optic_delisle"

ATT.SortOrder = 0

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 4

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_delisle_scope")

-------------------------------------------------
ATT = {}
ATT.PrintName = "Ratshot"
ATT.FullName = "13mm Ratshot Mini-Rockets"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Proximity fuse fragmentation mini-rockets. For rodents of unexpected size."
ATT.Pros = {"att.procon.airburst"}
ATT.Cons = {"stat.damage", "stat.muzzlevelocity", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 4

ATT.Mult_Damage_Max = 0.55
ATT.Mult_Damage_Min = 0.55

ATT.Mult_ShootEntForce = 0.65

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_ratshot"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_ratshot")

-------------------------------------------------
ATT = {}
ATT.PrintName = "Pipe"
ATT.FullName = "15mm Boosted Pipe Grenades"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Heavy grenades with timed fuse. Direct hits detonate instantly."
ATT.Pros = {"att.procon.explosive"}
ATT.Cons = {"stat.muzzlevelocity", "stat.clipsize", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 3

ATT.Add_ClipSize = -2

ATT.Mult_ShootEntForce = 0.15

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_pipe"

ATT.Mult_Damage_Max = 0.725
ATT.Mult_Damage_Min = 0.725

ATT.Override_BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 1
}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_pipe")

-------------------------------------------------
ATT = {}
ATT.PrintName = "LV"
ATT.FullName = "11mm Low Velocity Mini-Rockets"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Projectiles with reduced diameter and velocity, leaving a less visible trail."
ATT.Pros = {"att.procon.reliability", "stat.clipsize", "stat.rpm"}
ATT.Cons = {"stat.damage", "stat.muzzlevelocity"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 1

ATT.Mult_Damage_Max = 0.6
ATT.Mult_Damage_Min = 0.6
ATT.Mult_RPM = 1.25

ATT.Add_JamFactor = -0.25

ATT.Add_ClipSize = 4
ATT.Mult_ShootEntForce = 0.85

ATT.ShootEnt = "tacrp_proj_gyrojet_lv"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_lv")

-------------------------------------------------
ATT = {}
ATT.PrintName = "HE"
ATT.FullName = "13mm High Explosive Mini-Rockets"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Projectile with a small explosive charge instead of a bullet head."
ATT.Pros = {"att.procon.explosive"}
ATT.Cons = {"stat.damage", "att.procon.unreliable", "stat.rpm", "stat.muzzlevelocity"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 2

ATT.Mult_ShootEntForce = 0.85

ATT.Mult_Damage_Max = 0.6
ATT.Mult_Damage_Min = 0.6

ATT.Add_JamFactor = 0.5

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_he"

ATT.Override_BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 1
}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_he")