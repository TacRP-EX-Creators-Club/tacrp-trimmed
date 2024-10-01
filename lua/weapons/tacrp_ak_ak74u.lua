SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "AKS-74U"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "SMG-sized carbine designed for tank crews and special forces. Impressive firepower in a small package, but not gentle in terms of recoil."
SWEP.Description_Quote = "\"Mother Russia can rot, for all I care.\""

SWEP.Trivia_Caliber = "5.45x39mm"
SWEP.Trivia_Manufacturer = "Tula Arms Plant"
SWEP.Trivia_Year = "1979"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: TheLama; Compile: Bushmasta101
Texture: Thanez
Sound: BlitzBoaR/CC5/modderfreak, .exe
Animation: Tactical Intervention]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_74u.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_74u.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 25,
        Damage_Min = 13,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 14,
        Damage_Min = 7,

        Range_Min = 600,
        Range_Max = 1800,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 4,

        RecoilSpreadPenalty = 0.0022,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 23
SWEP.Damage_Min = 10
SWEP.Range_Min = 500
SWEP.Range_Max = 1900
SWEP.Penetration = 7 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.725

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 18000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 700

SWEP.Spread = 0.01

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 7
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 32
SWEP.RecoilFirstShotMult = 1.25

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 4
SWEP.RecoilStability = 0.4
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.0031
SWEP.HipFireSpreadPenalty = 0.022

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.33

SWEP.Sway = 0.9
SWEP.ScopedSway = 0.2

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.05, -0.5, -0.5)
SWEP.SightPos = Vector(-4.66, -7.5, -2.8)

SWEP.CorrectivePos = Vector(0, 0, -0.05)
SWEP.CorrectiveAng = Angle(0.8, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -2, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.DeployTimeMult = 0.9

SWEP.ClipSize = 30
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 0.925
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/74u.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65

SWEP.FreeAimMaxAngle = 3.5

// sounds

local path = "tacrp/weapons/ak47/ak47_"
local path1 = "tacint_shark/weapons/ak74u/"

SWEP.Sound_Shoot = "^" .. path1 .. "ak47-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "g3sg1-1.wav"

SWEP.Pitch_Shoot = 100
SWEP.Vol_Shoot = 120
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
    ["deploy"] = "deploy",
    ["fire_iron"] = "fire1_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = {"fire4_M", "fire4_L", "fire4_R"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "mid_reload"
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["akmount"] = {
        BGs_VM = {
            {2, 0}
        },
        BGs_WM = {
            {2, 0}
        },
        AttPosMods = {
            [1] = {
                Pos_VM = Vector(-5, 0.475, 1.5),
                Pos_WM = Vector(-0.1, -1, 0.5),
                VMScale = 1.2,
            }
        },
        SortOrder = 2,
    },
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.4, -0.2),
    vm_ang = Angle(0, 0.5, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "ValveBiped.bolt",
            pos = Vector(0, 0, -3),
            t0 = 0.01,
            t1 = 0.15,
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper", "optic_ak"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-5.7, 0.25, 3),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0.05, 2.5, 1.2),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"silencer", "muzz_ak"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        VMScale = 0.75,
        WMScale = 0.85,
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.35, 0.14, 19.3),
        Pos_WM = Vector(0, 18.5, -1.65),
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
        Pos_VM = Vector(-4.25, 0.6, 12),
        Pos_WM = Vector(-0.4, 10, -0.5),
        Ang_VM = Angle(90, 0, 75),
        Ang_WM = Angle(0, -90, 75),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_sling", "acc_duffle", "perk_extendedmag"},
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
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("tacint_74u.remove_clip", path1 .. "clipout.wav")
addsound("tacint_74u.insert_clip", path1 .. "clipin.wav")
addsound("tacint_74u.boltaction", path .. "boltaction.wav")
addsound("tacint_74u.Buttstock_Back", path .. "buttstock_back.wav")