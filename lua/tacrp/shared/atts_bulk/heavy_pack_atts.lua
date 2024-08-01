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


--SPAS HL2 Altfire
ATT = {}

ATT.PrintName = "2 Shot"
ATT.FullName = "Double Shot"
ATT.Icon = Material("entities/tacrp_att_trigger_burst.png", "mips smooth")
ATT.Description = "Alternate mehcanism that can fire two shots at once, somehow..."
ATT.Pros = {"Twice the fun"}
ATT.Cons = {"stat.recoil", "rating.control"}
ATT.Ignore = true

ATT.Category = {"trigger_spas"}

ATT.SortOrder = 1

ATT.Mult_ShootTimeMult = 1.25

ATT.Add_PostBurstDelay = 1.2
ATT.Add_RPMMultBurst = 25
ATT.Override_Firemodes = {-2, 1}
ATT.Override_RunawayBurst = true

ATT.Mult_RecoilSpreadPenalty = 1.1
ATT.Mult_RecoilVisualKick = 1.2
ATT.Mult_RecoilKick = 1.25

ATT.Mult_RecoilStability = 0.8

TacRP.LoadAtt(ATT, "trigger_spas_freeman")


--intervention mlg sound
ATT = {}

ATT.PrintName = "MLG"
ATT.FullName = "MLG High-Mobility Gamer Rounds"

ATT.Icon = Material("entities/mlg_logo.png", "mips smooth")
ATT.Description = "yep, this one's going in the montage."
ATT.Pros = {"stat.quickscope", "stat.midairspread", "stat.hipfirespread"}
ATT.Cons = {"stat.damage", "stat.range_min"}

ATT.SortOrder = 0

ATT.Mult_Range_Min = 0.5
ATT.Mult_Damage_Max = 0.705
ATT.Mult_Damage_Min = 0.705

ATT.Override_QuickScopeTime = 0
ATT.Mult_HipFireSpreadPenalty = 0.6667
ATT.Mult_MidAirSpreadPenalty = 0

ATT.Category = "m200_mlg"

ATT.Override_Sound_Shoot = "^tacint_shark/intervention/fire_mlg.wav"

TacRP.LoadAtt(ATT, "sound_m200_mlg")