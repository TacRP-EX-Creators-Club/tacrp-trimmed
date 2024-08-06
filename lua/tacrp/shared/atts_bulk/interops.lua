-- interops.lua

local ATT = {}

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

