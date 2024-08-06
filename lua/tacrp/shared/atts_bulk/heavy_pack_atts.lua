local ATT

--SPAS Semi Mode
ATT = {}

ATT.PrintName = "Semi"
ATT.FullName = "Semi-Auto"
ATT.Icon = Material("entities/tacrp_att_bolt_light.png", "mips smooth")
ATT.Description = "Switch to semi-auto operation, sacrficing stopping power for fire rate."
ATT.Pros = {"stat.rpm"}
ATT.Cons = {"stat.damage_max", "stat.spread", "stat.muzzlevelocity"}
ATT.Ignore = false

ATT.Category = "bolt_spas"

ATT.SortOrder = 0

ATT.Mult_RPM = 2
ATT.Mult_ShootTimeMult = 1

ATT.Mult_MuzzleVelocity = 0.75
ATT.Add_Damage_Max = -2
ATT.Mult_Spread = 1.4

ATT.Override_EjectDelay = 0
ATT.Override_Sound_Shoot = "^tacint_shark/spas/fire_semi.wav"

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return {"shoot_semi1", "shoot_semi2"}
    elseif seq == "blind_fire" then
        return {"blind_shoot_semi"}
    end
end

ATT.Free = true

TacRP.LoadAtt(ATT, "trigger_spas_semi")