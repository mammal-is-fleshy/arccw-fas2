SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AM-R50SA"
SWEP.TrueName = "M82"
SWEP.Trivia_Class = "Antimateriel Rifle"
SWEP.Trivia_Desc = "Huge anti-material rifle firing a huge round, meant for use against light vehicles and communications equipment. Extremely heavy, as it is meant to be used with its integrated bipod, but nobody is stopping you from lugging it around."
SWEP.Trivia_Manufacturer = "Barrett Firearms Manufacturing"
SWEP.Trivia_Calibre = ".50 BMG"
SWEP.Trivia_Country = "United States"
SWEP.Trivia_Year = "1982"

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_m82.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_m82.mdl"
SWEP.ViewModelFOV = 57

SWEP.WorldModelOffset = {
    pos = Vector(-12, 6.5, -8),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Damage = 250
SWEP.DamageMin = 90 -- damage done at maximum range
SWEP.Range = 250 -- in METRES
SWEP.Penetration = 45
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 6000 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
--SWEP.ExtendedClipSize = 12
--SWEP.ReducedClipSize = 4

SWEP.Recoil = 2.5
SWEP.RecoilSide = 1.5
SWEP.RecoilRise = 0.2
SWEP.VisualRecoilMult = 1.2
SWEP.MaxRecoilBlowback = 3

SWEP.Delay = 60 / 120 -- 60 / RPM.
SWEP.Num = 1 
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 80

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 800 -- inaccuracy added by hip firing.

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses

SWEP.ShootVol = 150 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/m82/m82_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/m82/m82_whisper.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/m82/m82_distance_fire1.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 60
SWEP.ShellScale = 2

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.425
SWEP.SpeedMult = 0.65
SWEP.SightedSpeedMult = 0.45

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.249, -5, 2.39),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(1, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(1, 0, 2)
SWEP.HolsterAng = Angle(-5, 5, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CrouchPos = Vector(-1, 1, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.BarrelLength = 60

SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.Bipod_Integral = nil
SWEP.O_Hook_Bipod = function(wep, data)
    if wep.Attachments[2].Installed == nil then return {buff = "Bipod", current = true} end
    if wep.Attachments[2].Installed then return {buff = "Bipod", current = true}	end
	if wep.Attachments[2].Installed == "mifl_fas2_m82_obrez" then return {buff = "Bipod", current = false}	end
end

SWEP.AttachmentElements = {
    ["whisperer"] = {
        TrueNameChange = "M82S",
        NameChange = "AM-R50SA-SSD",
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["obrez"] = {
        TrueNameChange = "M28",
        NameChange = "AM-R50 Kurz",
        VMBodygroups = {
        {ind = 0, bg = 1},
        {ind = 1, bg = 1},
        {ind = 2, bg = 3},
        },
        Bipod_Integral = false,
    },
    ["long"] = {
        TrueNameChange = "M82-L",
        NameChange = "AM-R500-SA",
        VMBodygroups = {
        {ind = 2, bg = 2},
        },
    },	
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp", "optic_fas1_m82"}, -- what kind of attachments can fit here, can be string or table
        Bone = "M82_Body", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2, 3.9), -- offset that the attachment will be relative to the bone
            vang = Angle(90, -90, -90),
            wpos = Vector(9, 0.739, -6.801),
            wang = Angle(-10, 0, 180)
        },
        CorrectiveAng = Angle(180, 0, 0),
        InstalledEles = {"noch"},
        ExtraSightDist = 3
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "mifl_fas2_m82_hg",
        Bone = "M82_Body",
        Offset = {
            vpos = Vector(0.5, 6, -1),
            vang = Angle(90, -90, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl"},
        Bone = "M82_Body",
        Offset = {
            vang = Angle(90, -90, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, 7, 0),
            vmax = Vector(0, 15, 0),
            wmin = Vector(19, 0.832, -6),
            wmax = Vector(19, 0.832, -6),
        },
        ExcludeFlags = {"mifl_fas2_m82_obrez"},			
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "M82_Body",
        Offset = {
            vpos = Vector(-0.8, 2, -1.2), -- offset that the attachment will be relative to the bone
            vang = Angle(180, -90, 90),
        },
        ExtraSightDist = 22,
        CorrectivePos = Vector(2, -2, 0),
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        DefaultAttName = "Standard Ammo"
    },
    {
        PrintName = "Perk",
        Slot = {"go_perk", "perk_fas2"}
    },
    {
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = {"charm"},
        Bone = "M82_Body",
        Offset = {
            vpos = Vector(1.5, -3, 0),
            vang = Angle(90, -90, -90),
        },
        FreeSlot = true,
    },
}

function SWEP:SelectReloadAnimation()
    local ret
    local inbipod = (self:InBipod()) and "_bipod" or ""
    local nomen = self:GetBuff_Override("Override_FAS2NomenBackup") and "_nomen" or ""
    local empty = (self:Clip1() == 0) and "_empty" or ""

    ret = "reload" .. inbipod .. nomen .. empty

    return ret
end

SWEP.Animations = {
    ["draw"] = {
        Source = "deploy",
        MinProgress = 30 / 35,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "deploy_first",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_bipod"] = {
        Source = "bipod_idle",
    },
    ["fire"] = {
        Source = {"fire","fire_2","fire_3"},
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "iron",
        ShellEjectAt = 0,
        Time = 0.4,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 3.5,
        LHIK = true,
        LHIKEaseIn = 0.5,
        LHIKIn = 1,
        LHIKOut = 1,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        MinProgress = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.5,
        LHIKIn = 1,
        LHIKOut = 2.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_nomen"] = {
        Source = "reload_nomen",
        Time = 117 / 35,
        MinProgress = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },
    ["reload_nomen_empty"] = {
        Source = "reload_empty_nomen",
        MinProgress = 2,
        Time = 150 / 35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },
    ["fire_bipod"] = {
        Source = "bipod_fire",
        Time = 31 / 35,
        ShellEjectAt = 0,
    },
    ["enter_bipod"] = {
        Source = "bipod_dn",
        Time = 110 / 35,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
		Mult = 0.7,
    },
    ["exit_bipod"] = {
        Source = "bipod_up",
        Time = 102 / 35,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
		Mult = 0.7,		
    },
    ["reload_bipod"] = {
        Source = "bipod_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2.5,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_bipod_empty"] = {
        Source = "bipod_reload_empty",
        MinProgress = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_bipod_nomen"] = {
        Source = "bipod_reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 3,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_bipod_nomen_empty"] = {
        Source = "bipod_reload_empty_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
}

SWEP.BipodRecoil = 0.1
SWEP.BipodDispersion = 0.2