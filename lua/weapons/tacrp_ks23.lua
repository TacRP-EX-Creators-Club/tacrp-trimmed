SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "KS-23"
SWEP.Category = "Tactical RP (Arctic)"

SWEP.Description = "Shotgun made out of anti-aircraft cannon parts, designed for suppressing prison riots. Terrible accuracy, recoil, and rate of fire, but makes for it by packing incredible power."

SWEP.ViewModel = "models/weapons/tacint/v_ks23.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_ks23.mdl"

SWEP.Slot = 2

// "ballistics"

SWEP.Damage_Max = 100 / 6 // damage at minimum range
SWEP.Damage_Min = 100 / 12 // damage at maximum range
SWEP.Range_Min = 450 // distance for which to maintain maximum damage
SWEP.Range_Max = 2000 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.Num = 12

SWEP.MuzzleVelocity = 9000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.25,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 60

SWEP.Spread = 0.07

SWEP.ShootSpeedMult = 1.5

// Spread penalties are in spread units and are additive
SWEP.MoveSpreadPenalty = 0 // spread penalty while travelling at max. 250 u/s
SWEP.MidAirSpreadPenalty = 0 // spread penalty for being in the air
SWEP.HipFireSpreadPenalty = 0 // spread penalty for not being scoped in
SWEP.BlindFireSpreadPenalty = 0 // spread penalty for blind firing
SWEP.CrouchSpreadPenalty = 0
SWEP.ScopedSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.33 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 100
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5
SWEP.RecoilVisualShake = 5

SWEP.RecoilKick = 20

SWEP.RecoilSpreadPenalty = 0.25 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.87
SWEP.ShootingSpeedMult = 0.75 // slow down applied while shooting
SWEP.SightedSpeedMult = 0.5
SWEP.MeleeSpeedMult = 0.5
SWEP.MeleeSpeedMultTime = 2 // seconds to apply slow down for

SWEP.AimDownSightsTime = 0.42
SWEP.SprintToFireTime = 0.42

SWEP.ReloadTimeMult = 0.75

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.57, 0.5, 0)
SWEP.SightPos = Vector(-3.31, -1, -3.2)

SWEP.CorrectivePos = Vector(0.275, 0, -0.2)
SWEP.CorrectiveAng = Angle(1.21, 0.1, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 3
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.15

// sounds

local path = "TacRP/weapons/bekas/"

SWEP.Sound_Shoot = "^tacrp/weapons/fp6/fp6_fire-1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.Pitch_Shoot = 90
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 4
SWEP.EjectDelay = 0.5

// anims

// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"}
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_cqb",
        Bone = "ValveBiped.bekas_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        InstalledElements = {"sights"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-3.2, 0, 8),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(9, 0.85, -7),
        Ang_WM = Angle(-25, 3.5, 180),
    },
    -- [2] = {
    --     PrintName = "Muzzle",
    --     Category = "silencer",
    --     Bone = "ValveBiped.bekas_rootbone",
    --     AttachSound = "TacRP/weapons/silencer_on.wav",
    --     DetachSound = "TacRP/weapons/silencer_off.wav",
    --     Pos_VM = Vector(-2.2, 0, 33),
    --     Pos_WM = Vector(23, 2.5, -2.8),
    --     Ang_VM = Angle(90, 0, 0),
    --     Ang_WM = Angle(0, -3.5, 180),
    -- },
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.bekas_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.25,
        Pos_VM = Vector(-1.75, -0.3, 22),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(22, 0, -11),
        Ang_WM = Angle(-25, 3.5, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload", "perk_shotgun_ammo", "perk_ks23_ammo"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
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

addsound("TacInt_Bekas.Insertshell", path .. "insertshell-1.wav")
addsound("TacInt_Bekas.Movement", path .. "movement-1.wav")
addsound("TacInt_Bekas.PumpBack", path .. "pump_backward-1.wav")
addsound("TacInt_Bekas.PumpForward", path .. "pump_forward-1.wav")