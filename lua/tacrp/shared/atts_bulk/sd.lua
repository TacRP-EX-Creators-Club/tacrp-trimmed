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