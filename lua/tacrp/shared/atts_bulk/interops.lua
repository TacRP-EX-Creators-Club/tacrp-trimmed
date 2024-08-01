-- interops.lua

local ATT = {}

------------------------------
-- ammo_star15_300blk
------------------------------
ATT = {}

ATT.PrintName = ".300 BLK"
ATT.FullName = "ST AR-15 .300 AAC Blackout Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_300blk.png", "mips smooth")
ATT.Description = "Modification to load lower velocity bullets with better CQB potential."
ATT.Pros = {"stat.damage_max"}
ATT.Cons = {"rating.range", "stat.muzzlevelocity", "att.procon.armor"}

ATT.Category = "ammo_star15"
ATT.SortOrder = 0

ATT.InstalledElements = {"300blk"}

ATT.Mult_Damage_Max = 1.2
ATT.Mult_Range_Min = 0.5
ATT.Mult_Range_Max = 0.75
ATT.Mult_MuzzleVelocity = 0.8
ATT.Add_Spread = 0.0007
ATT.Mult_RecoilSpreadPenalty = 1.1

ATT.Mult_Penetration = 0.75
ATT.Add_ArmorPenetration = -0.15
ATT.Mult_ArmorBonus = 0.5

-- forgive me for fudging the dist sounds
ATT.Override_Sound_Shoot = "^tacint_extras/star15/fire-03.ogg"
ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/fire_300blk-supp.ogg"

ATT.Override_DropMagazineModel = "models/weapons/tacint_extras/magazines/star15_pmag.mdl"
ATT.Override_DropMagazineImpact = "plastic"

TacRP.LoadAtt(ATT, "ammo_star15_300blk")

------------------------------
-- ammo_star15_50beo
------------------------------
ATT = {}

ATT.PrintName = ".50 BEO"
ATT.FullName = "ST AR-15 .50 Beowulf Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_50beo.png", "mips smooth")
ATT.Description = "Modification to load low capacity, high power magnum rounds."
ATT.Pros = {"rating.lethality"}
ATT.Cons = {"rating.range", "rating.control", "att.procon.armor"}

ATT.Category = "ammo_star15"
ATT.SortOrder = 0.5

ATT.InstalledElements = {"50beo"}

ATT.Mult_Damage_Max = 2
ATT.Mult_Damage_Min = 1.5
ATT.Mult_Range_Min = 0.75
ATT.Mult_Range_Max = 0.5

ATT.Mult_Penetration = 0.25
ATT.Add_ArmorPenetration = -0.1
ATT.Mult_ArmorBonus = 0.75

ATT.Mult_RPM = 0.6
ATT.Mult_ClipSize = 1 / 2.4

ATT.Add_RecoilKick = 4
ATT.Mult_RecoilSpreadPenalty = 1.75
ATT.Add_RecoilResetTime = 0.075
ATT.Mult_MuzzleVelocity = 0.6
ATT.Add_RecoilPerShot = 0.6

ATT.Mult_ShootTimeMult = 1.5

ATT.Override_Sound_Shoot = "^tacint_extras/star15/fire_beo.ogg"
ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/fire_beo-supp.ogg"

TacRP.LoadAtt(ATT, "ammo_star15_50beo")

------------------------------
-- muzz_comp_io_m14
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_pistol_comp.name"
ATT.Icon = Material("entities/tacrp_att_muzz_pistol_comp.png", "mips smooth")
ATT.Description = "Muzzle device which reduces recoil impact."
ATT.Pros = {"stat.recoil", "stat.muzzlevelocity"}
ATT.Cons = {"stat.rpm"}

ATT.Category = "comp_m14"
ATT.InvAtt = "muzz_pistol_comp"
ATT.SortOrder = 1

ATT.Mult_RecoilKick = 0.5
ATT.Mult_RecoilSpreadPenalty = 0.8
ATT.Mult_RPM = 450 / 600
ATT.Mult_MuzzleVelocity = 1.1

ATT.InstalledElements = {"muzzle"}

TacRP.LoadAtt(ATT, "muzz_comp_io_m14")

------------------------------
-- muzz_tec9_shroud
------------------------------
ATT = {}

ATT.PrintName = "Shroud"
ATT.FullName = "TEC-9 Barrel Shroud"
ATT.Icon = Material("entities/tacrp_att_muzz_tec9_shroud.png", "mips smooth")
ATT.Description = "Barrel extension improving performance at range."
ATT.Pros = {"rating.precision", "rating.control", "rating.range"}
ATT.Cons = {"stat.rpm", "rating.maneuvering"}

ATT.Category = "muzz_tec9"

ATT.Mult_RPM = 750 / 1000
ATT.Mult_Spread = 0.6
ATT.Mult_RecoilSpreadPenalty = 0.7
ATT.Mult_Range_Max = 1.5
ATT.Mult_Range_Min = 1.5
ATT.Mult_RecoilKick = 0.85
ATT.Mult_RecoilVisualKick = 0.75
ATT.Add_HipFireSpreadPenalty = 0.0075
ATT.Add_FreeAimMaxAngle = 0.5

ATT.InstalledElements = {"shroud"}
ATT.Override_QCA_Muzzle = 3
ATT.Add_Pitch_Shoot = -5

TacRP.LoadAtt(ATT, "muzz_tec9_shroud")

------------------------------
-- optic_ak_pso1
------------------------------
ATT = {}

ATT.PrintName = "att.optic_ak_pso1.name"
ATT.Icon = Material("entities/tacrp_att_optic_pso1.png", "mips smooth")
ATT.Description = "att.optic_ak_pso1.desc"
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_ak"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pso1.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 0.9
ATT.Override_ScopeHideWeapon = true

ATT.SightPos = Vector(0, -17, 1.75)
ATT.SightAng = Angle(0, 0, 0)

ATT.Model = "models/weapons/tacint_extras/addons/pso1.mdl"
ATT.Scale = 1.25
ATT.ModelOffset = Vector(-1.5, 0, -0.75)

ATT.InstalledElements = {"akmount"}

TacRP.LoadAtt(ATT, "optic_ak_pso1")

------------------------------
-- optic_ar_colt
------------------------------
ATT = {}

ATT.PrintName = "att.optic_ar_colt.name"
ATT.FullName = "att.optic_ar_colt.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "att.optic_ar_colt.desc"
ATT.Pros = {"att.zoom.3"}

ATT.Category = "optic_ar"

ATT.SortOrder = 3

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/coltscope.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3
ATT.Override_ScopeOverlaySize = 0.85

ATT.Model = "models/weapons/tacint_extras/addons/coltscope.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ATT.InstalledElements = {"chmount"}

TacRP.LoadAtt(ATT, "optic_ar_colt")

------------------------------
-- optic_k98_zf41
------------------------------
ATT = {}

ATT.PrintName = "Zeiss"
ATT.FullName = "Zeiss 6x36 Scope" --not actually, it's the scope from the trg-42
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "Medium-power sniper scope made specially for the Kar98k."
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_kar98"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/coltscope.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 0.85

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ATT.InstalledElements = {"scope"}

TacRP.LoadAtt(ATT, "optic_k98_zf42")

------------------------------
-- optic_m16a2_colt
------------------------------
ATT = {}

ATT.PrintName = "att.optic_ar_colt.name"
ATT.FullName = "att.optic_ar_colt.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "att.optic_ar_colt.desc"
ATT.Pros = {"att.zoom.3"}

ATT.Category = "optic_m16a2"
ATT.InvAtt = "optic_ar_colt"

ATT.SortOrder = 3

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/coltscope.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3
ATT.Override_ScopeOverlaySize = 0.85

ATT.InstalledElements = {"coltscope"}

TacRP.LoadAtt(ATT, "optic_m16a2_colt")

------------------------------
-- optic_pso1
------------------------------
ATT = {}

ATT.PrintName = "att.optic_ak_pso1.name"
ATT.Icon = Material("entities/tacrp_att_optic_pso1.png", "mips smooth")
ATT.Description = "att.optic_ak_pso1.desc"
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_pso1"
ATT.InvAtt = "optic_ak_pso1"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pso1.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 0.9
ATT.Override_ScopeHideWeapon = true

ATT.InstalledElements = {"pso1"}

TacRP.LoadAtt(ATT, "optic_pso1")

------------------------------
-- optic_xm8_4x
------------------------------
ATT = {}

ATT.PrintName = "4x"
ATT.FullName = "XM8 Integrated Scope (4x)"
ATT.Icon = Material("entities/tacrp_att_optic_acog.png", "mips smooth")
ATT.Description = "Medium range zoom setting with ACOG reticle."
ATT.Pros = {"att.zoom.4"}

ATT.Category = "optic_xm8"

ATT.SortOrder = 4

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/acog.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 4
ATT.Override_ScopeOverlaySize = 0.85

ATT.Free = true

TacRP.LoadAtt(ATT, "optic_xm8_4x")

------------------------------
-- optic_xm8_6x
------------------------------
ATT = {}

ATT.PrintName = "6x"
ATT.FullName = "XM8 Integrated Scope (6x)"
ATT.Icon = Material("entities/tacrp_att_optic_acog.png", "mips smooth")
ATT.Description = "Medium-long range zoom setting with Short Dot reticle."
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_xm8"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/shortdot.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 1

ATT.Free = true

TacRP.LoadAtt(ATT, "optic_xm8_6x")

------------------------------
-- optic_xm8_8x
------------------------------
ATT = {}

ATT.PrintName = "8x"
ATT.FullName = "XM8 Integrated Scope (8x)"
ATT.Icon = Material("entities/tacrp_att_optic_acog.png", "mips smooth")
ATT.Description = "Long range zoom setting with sniper reticle."
ATT.Pros = {"att.zoom.8"}

ATT.Category = "optic_xm8"

ATT.SortOrder = 8

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/sniper.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 8
ATT.Override_ScopeOverlaySize = 0.8

ATT.Free = true

TacRP.LoadAtt(ATT, "optic_xm8_8x")

