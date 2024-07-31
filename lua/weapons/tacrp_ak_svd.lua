SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Dragunov"
SWEP.Category = "Tactical RP" // "Tactical RP (Extras)"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "7Sniper Rifle"

SWEP.Description = "Russian sniper rifle with low fire rate but great damage and recoil control. Equipped with a 6x scope by default.\nWhile superficially resembling the AK design, it is completely unrelated mechanically."

SWEP.Trivia_Caliber = "7.62x54mmR"
SWEP.Trivia_Manufacturer = "Kalashnikov Concern"
SWEP.Trivia_Year = "1963"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Rafael De Jongh, Ettubrutesbro
Texture: WangChung
Sound: Ghost597879, King Friday, iFlip
Animation: Tactical Intervention]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_svd.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_svd.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 45,
        Damage_Min = 75,
        Range_Max = 8000,
        Range_Min = 2500,

        RecoilKick = 5,
        RPM = 180,
    },
    [TacRP.BALANCE_TTT] = {
        // TODO

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_PVE] = {
        // TODO
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 50
SWEP.Damage_Min = 34
SWEP.Range_Min = 2000 // distance for which to maintain maximum damage
SWEP.Range_Max = 6000 // distance at which we drop to minimum damage
SWEP.Penetration = 11 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.775
SWEP.ArmorBonus = 2

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 38000

// misc. shooting

SWEP.Firemode = 1
SWEP.RPM = 150

SWEP.Spread = 0.0002

SWEP.ShootTimeMult = 0.7

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.22 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 4
SWEP.RecoilFirstShotMult = 0.75 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.75

SWEP.RecoilKick = 6
SWEP.RecoilStability = 0.6

SWEP.RecoilSpreadPenalty = 0.003
SWEP.HipFireSpreadPenalty = 0.08
SWEP.PeekPenaltyFraction = 0.1

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.4

SWEP.AimDownSightsTime = 0.47
SWEP.SprintToFireTime = 0.55

SWEP.Sway = 2.5
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 8.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0.5, -2.5, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.05, -0.35, 0)
SWEP.SightPos = Vector(-4.75, -7.5, -2.7)

SWEP.CorrectivePos = Vector(-0.05, 0, -0.05)
SWEP.CorrectiveAng = Angle(0.65, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -2, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/pso1_ak.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

SWEP.ClipSize = 10
SWEP.Ammo = "357"
SWEP.Ammo_Expanded = "ti_rifle"

SWEP.ReloadTimeMult = 1.15
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/svd.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65

// sounds

local path = "tacint_extras/svd/"
local path2 = "tacrp/weapons/ak47/ak47_"

SWEP.Sound_Shoot = "^" .. path .. "g3sg1-1.wav"
SWEP.Sound_Shoot_Silenced = path2 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire_iron"] = "fire1_M",
    ["fire"] = {"fire5_M", "fire5_L", "fire5_R"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "mid_reload"
}

SWEP.DeployTimeMult = 2.5

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["irons"] = {
        BGs_VM = {
            {1, 2}
        },
        BGs_WM = {
            {1, 2}
        },
    },
    ["akmount"] = {
        BGs_VM = {
            {1, 2}
        },
        BGs_WM = {
            {1, 2}
        },
        AttPosMods = {
            [1] = {
                Pos_VM = Vector(-5.5, 0.55, 3),
                Pos_WM = Vector(-0.4, 2, 0.5),
            }
        },
        SortOrder = 2,
    },
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.8, -0.5),
    vm_ang = Angle(0, 1, 0),
    t = 0.25,
    tmax = 0.25,
    bones = {
        {
            bone = "ValveBiped.bolt",
            pos = Vector(0, 0, -3),
            t0 = 0.05,
            t1 = 0.2,
        },
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights_sniper", "optic_cqb", "optic_medium", "optic_sniper", "optic_ak2"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"sights"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.9,
        Pos_VM = Vector(-5.9, 0.24, 5.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 5, 1.25),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.9,
        Pos_VM = Vector(-3.6, 0.24, 39.2),
        Pos_WM = Vector(0, 44, -1.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.25, -0.1, 19),
        Pos_WM = Vector(0.3, 20, -1.5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, -90, -90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_sniper"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_sniper"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_svd.remove_clip", path .. "clipin.wav")
addsound("tacint_svd.insert_clip", path .. "clipout.wav")
addsound("tacint_svd.bolt_back", path .. "bolt_back.wav")
addsound("tacint_svd.bolt_forward", path .. "bolt_forward.wav")
