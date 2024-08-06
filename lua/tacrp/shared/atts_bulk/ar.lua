local ATT


ATT = {}
ATT.PrintName = "SR-25 Supp."
ATT.FullName = "SR-25 Suppressor Shroud"
ATT.Icon = Material("entities/tacrp_att_muzz_sr25.png", "mips smooth")
ATT.Description = "Unique suppressor shroud that improves ballistics but lowers fire rate."
ATT.Pros = {"stat.vol_shoot", "stat.recoil", "stat.range_min", "stat.muzzlevelocity"}
ATT.Cons = {"stat.rpm"}

ATT.Category = "muzz_sr25"

ATT.SortOrder = 4

ATT.Add_Vol_Shoot = -30
ATT.Add_Pitch_Shoot = 25
ATT.Mult_Range_Min = 1.25
ATT.Mult_RecoilKick = 0.75
ATT.Mult_RecoilSpreadPenalty = 0.85
ATT.Mult_MuzzleVelocity = 1.1
ATT.Mult_RPM = 0.75
-- ATT.Add_SprintToFireTime = 0.03
-- ATT.Add_AimDownSightsTime = 0.02
-- ATT.Add_FreeAimMaxAngle = 1
-- ATT.Add_HipFireSpreadPenalty = 0.03

ATT.Silencer = true
ATT.Override_MuzzleEffect = "muzzleflash_suppressed"

ATT.InstalledElements = {"suppressor"}

TacRP.LoadAtt(ATT, "muzz_sr25")