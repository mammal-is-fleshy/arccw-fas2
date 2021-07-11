SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Bailiff"
SWEP.TrueName = "Raging Bull"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Big revolver firing a big cartridge, useful for sending people straight to Brazil (coincidentally the country of origin). Because of the uncommon cartridge and size, there is no speedloader."
SWEP.Trivia_Manufacturer = "Taurus International"
SWEP.Trivia_Calibre = ".454 Casull"
SWEP.Trivia_Mechanism = "Double Action"
SWEP.Trivia_Country = "Brazil"
SWEP.Trivia_Year = "1982"

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 150

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_ragingbull.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_ragingbull.mdl"
SWEP.ViewModelFOV = 57

SWEP.WorldModelOffset = {
    pos = Vector(-17, 5.5, -5),
    ang = Angle(-10, 0, 180)
}
SWEP.MirrorVMWM = true
SWEP.Damage = 85
SWEP.DamageMin = 49 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 20
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 900 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false

SWEP.PhysBulletMuzzleVelocity = 800

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 5
SWEP.ReducedClipSize = 5

SWEP.Recoil = 3
SWEP.RecoilSide = 1.75
SWEP.RecoilRise = 1.3
SWEP.MaxRecoilBlowback = 3

SWEP.Delay = 60 / 120 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "gce" -- the magazine pool this gun draws from

SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 95 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/ragingbull/ragingbull_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/ragingbull/ragingbull_distance_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/ragingbull/rag_whisper.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 2
SWEP.ShellPitch = 85

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.325

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.071, 0, 2.6),
    Ang = Angle(-0.05, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(0, -1, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -2, -0.2)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 2, 2)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["mifl_fas2_r454_stock"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["mifl_fas2_r454_mag_410"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },	
    ["mifl_fas2_r454_mag_300"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },		
    ["mifl_fas2_r454_mag_9"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },		
    ["whisperer"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["b_long"] = {
        NameChange = "Judge",	
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["b_short"] = {
        NameChange = "Executor",	
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["b_snip"] = {
        VMBodygroups = {{ind = 2, bg = 5}},
    },	
    ["b_no"] = {
        TrueNameChange = "Baby Bull",
        VMBodygroups = {{ind = 2, bg = 4}},
    },
    ["rail"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = { "optic_lp", "optic", "optic_sniper"},
        Bone = "RagingBullBase",
        Offset = {
            vpos = Vector(5, -4.155, 0),
            vang = Angle(0, 0, -90),
        },
        VMScale = Vector(1.2, 1.2, 1.2),
        InstalledEles = {"rail"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "mifl_fas2_r454_barrel",
        Bone = "RagingBullBase",
        Offset = {
            vpos = Vector(8, -0.2, 0),
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "RagingBullBase",
        Offset = {
            vpos = Vector(8, -2, 0),
            vang = Angle(0, 0, -90),
        },
        ExtraSightDist = 15,
        CorrectivePos = Vector(0.4, -2, -0.25),
        ExcludeFlags = {"b_snip"}
    },
    {
        PrintName = "Calibre",
        DefaultAttName = ".454 Cylinder",		
        Slot = "mifl_fas2_r454_mag",
        Bone = "RagingBullBase",
        Offset = {
            vpos = Vector(4.2, -2, 0),
            vang = Angle(0,0, -90),
        },
    },	
    {
        PrintName = "Stock",
        Slot = {"mifl_fas2_r454_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(-0.2, -1.8, -0.2),
            vang = Angle(0, -90, 0),
        },
        ExcludeFlags = {"roni"},
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
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local nomen = (wep:GetBuff_Override("Override_FAS2NomenBackup") and "_nomen") or ""

    local reloadtime = (wep.Primary.ClipSize - wep:Clip1())

    return "Reload" .. reloadtime .. nomen
end

SWEP.Hook_SelectFireAnimation = function(wep, anim)
    if anim == "fire_iron" and wep:GetBuff("Recoil") > 2 then
        return "fire"
    end
end

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "draw",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = {"Fire01","fire02","fire03"},
    },
    ["fire_iron"] = {
        Source = "Fire_Scoped01",
    },
    ["Reload1"] = {
        Source = "Reload1",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 1, e = "arccw_shell_fas2_r454" },			
        },			
    },
    ["Reload2"] = {
        Source = "Reload2",
        Time = 105/30,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_r454" },	
            {t = 0.8, e = "arccw_shell_fas2_r454" },				
        },			
    },
    ["Reload3"] = {
        Source = "Reload3",
        Time = 120/30,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 0.8, e = "arccw_shell_fas2_r454" },		
        },			
    },
    ["Reload4"] = {
        Source = "Reload4",
        Time = 135/30,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 0.8, e = "arccw_shell_fas2_r454" },	
            {t = 0.8, e = "arccw_shell_fas2_r454" },				
        },			
    },
    ["Reload5"] = {
        Source = "Reload5",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 0.8, e = "arccw_shell_fas2_r454" },
            {t = 1.2, e = "arccw_shell_fas2_r454" },	
            {t = 1.2, e = "arccw_shell_fas2_r454" },			
        },	
    },
-- Nomen
    ["Reload1_nomen"] = {
        Source = "Reload1_nomen",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.75, e = "arccw_shell_fas2_r454" },		
        },		
    },
    ["Reload2_nomen"] = {
        Source = "Reload2_nomen",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },			
        },			
    },
    ["Reload3_nomen"] = {
        Source = "Reload3_nomen",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },			
        },			
    },
    ["Reload4_nomen"] = {
        Source = "Reload4_nomen",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },			
        },			
    },
    ["Reload5_nomen"] = {
        Source = "Reload5_nomen",
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0.25,
        SoundTable = {
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },
            {t = 0.65, e = "arccw_shell_fas2_r454" },	
            {t = 0.65, e = "arccw_shell_fas2_r454" },			
        },			
    },
}