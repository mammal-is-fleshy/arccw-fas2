SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Gewehr-36C"
SWEP.TrueName = "G36c"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Compact carbine with folding stock and good ergonomics."
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 2001

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_g36c.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_g36c.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000000000000000000"

SWEP.Damage = 34
SWEP.DamageMin = 22 -- damage done at maximum range
SWEP.Range = 55 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 900

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 700 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 155

SWEP.AccuracyMOA = 4 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 50

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/g36c/g36c_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/g36c/g36c_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/g36c/g36c_distance_fire1.wav"

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.85
SWEP.SightTime = 0.28

SWEP.IronSightStruct = {
    Pos = Vector(-4.95, -8, 2.273),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -2, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, 0, -0.2)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-15, 25, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6, -1, -1)
SWEP.CustomizeAng = Angle(10, 15, 15)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["buftube"] = {
        VMBodygroups = {
            {ind = 1, bg = 2},
        },
    },
    ["mifl_fas2_g36_stock_mp5"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },
    ["mifl_fas2_g36_barrel_sd"] = {
        NameChange = "Gewehr-S",
        TrueNameChange = "G36-S",
        VMBodygroups = {
            {ind = 3, bg = 1},
        },
    },
    ["mifl_fas2_g36_barrel_scope"] = {
        NameChange = "Gewehr",
        TrueNameChange = "G36",
        VMBodygroups = {
            {ind = 3, bg = 4}, {ind = 2, bg = 3}, {ind = 7, bg = 2},
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.94, -12, 0.85),
            Ang = Angle(.6, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(6, -5, 0),
            },
            [3] = {
                vpos = Vector(26, -0.15, 0),
            },
        },
    },	
    ["mifl_fas2_g36_barrel_oicw"] = {
        Override_ActivePos = Vector(0, -1, -1),	
        NameChange = "Gewehr-OICW",
        TrueNameChange = "G36 OICW",
        VMBodygroups = {
            {ind = 3, bg = 6}, {ind = 2, bg = 6}, {ind = 7, bg = 3},
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.95, -15, -1.1),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(8.75, -6, 0),
            },
            [3] = {
                vpos = Vector(23.5, -0.15, 0),
            },
        },
    },
    ["mifl_fas2_g36_barrel_kurz"] = {
        NameChange = "Gewehr-Kurz",
        TrueNameChange = "G36KK",
        VMBodygroups = {
            {ind = 3, bg = 5}, {ind = 2, bg = 5},
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.95, -8, 3.1),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -2.7, 0),
            },
            [3] = {
                vpos = Vector(19, -0.15, 0),
            },
        },
    },	
    ["mifl_fas2_g36_barrel_no"] = {
        NameChange = "Gewehr-Kurz",
        TrueNameChange = "G-Kurz",
        VMBodygroups = {
            {ind = 3, bg = 3}, {ind = 2, bg = 2}
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.95, -8, 3.099),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -2.7, 0),
            },
            [3] = {
                vpos = Vector(14, -0.15, 0),
            },
        },
    },
    ["mifl_fas2_g36_barrel_long"] = {
        NameChange = "Gewehr-36",
        TrueNameChange = "G36",
        VMBodygroups = {
            {ind = 3, bg = 2}, {ind = 2, bg = 1}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(34, -0.15, 0),
            },
        },
    },
    ["10"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
    },
    ["60"] = {
        VMBodygroups = {
            {ind = 5, bg = 3},
        },
    },
    ["20"] = {
        VMBodygroups = {
            {ind = 5, bg = 2},
        },
    },
    ["iron_none"] = {
        VMBodygroups = {
            {ind = 2, bg = 4},
        },
    },
    ["mifl_fas2_g36_mag_9mm_15"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
            {ind = 5, bg = 4},
            {ind = 6, bg = 1},
        },
    },
    ["mifl_fas2_g36_mag_9mm_30"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
            {ind = 5, bg = 5},
            {ind = 6, bg = 1},
        },
    },
}

SWEP.ExtraSightDist = 10

SWEP.WorldModelOffset = {
    pos = Vector(-15, 6.5, -7),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[1].Installed then vm:SetBodygroup(2, 3) end
    if wep.Attachments[1].Installed and wep.Attachments[2].Installed == "mifl_fas2_g36_barrel_scope" then vm:SetBodygroup(7, 1) end	
end


SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic", "optic_lp"},
        Bone = "Dummy01",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(5, -3.5, 0),
            vang = Angle(0, 0, -90),
        },
        InstalledEles = {"iron_none"},
        VMScale = Vector(1.2, 1.2, 1.2),
        ExtraSightDist = 3
    },
   {				-- why dis no work :((((((((((((((((((((((((((((((((((((((
        PrintName = "",
        Slot = "mifl_integral_lhik_fas2",
        Bone = "Dummy01",
        Integral = true,
        Hidden = false,
        Offset = {
            vpos = Vector(12, 1, -0.5),
            vang = Angle(0, 0, -90),
        }
    },	
    {
        PrintName = "Handguard",
        Slot = "mifl_fas2_g36c_hg",
        Bone = "Dummy01",
        DefaultAttName = "Standard Barrel",
        Offset = {
            vpos = Vector(10, 2.5, -0.2),
            vang = Angle(0, 0, -90),
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(22.2, -0.15, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
        ExcludeFlags = {"mifl_fas2_g36_barrel_sd"}
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(15, 1.2, 0),
            vang = Angle(0, 0, -90),
        },
        MergeSlots = {5},
    },
    {
        PrintName = "INTEG-UBGL",
        Hidden = true,
        Slot = "ubgl",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(9, 1.2, 0),
            vang = Angle(0, 0, -90),
        },
        ExcludeFlags = {"mifl_fas2_g36_barrel_oicw"},			
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(10, -1, 0.5),
            vang = Angle(0, 0, 180),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
        ExtraSightDist = 12,
        CorrectivePos = Vector(-1.5, -5, 3),
    },
    {
        PrintName = "Magazine",
        Slot = {"mifl_fas2_g36_mag"},
        DefaultAttName = "30-Round 5.56mm"
    },
    {
        PrintName = "Stock",
        Slot = {"go_stock", "mifl_fas2_uni_stock", "mifl_fas2_g36_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(-2, 0.1, 0),
            vang = Angle(0, 0, -90),
        },
        ExcludeFlags = {"mifl_fas2_g36_barrel_oicw"},		
        VMScale = Vector(1, 1, 1)
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
        Slot = "charm",
        FreeSlot = true,
        Bone = "Dummy01", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5, 0, -1),
            vang = Angle(0, 0, -90),
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "deploy",
    },
    ["idle_empty"] = {
        Source = "idle_empty"
    },
    ["draw_empty"] = {
        Source = "deploy_empty",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["ready"] = {
        Source = "deploy_first",
    },
    ["fire"] = {
        Source = {"fire1"},
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_last_scoped",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = {"fire_last"},
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire1_scoped",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_nomen"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_nomen_empty"] = {
        Source = "reload_empty_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },




    ["enter_ubgl"] = {
        Source = "idle",
        Time = 0,	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },		
    ["exit_ubgl"] = {
        Source = "idle",
        Time = 0,	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },			
    ["oicw_wet"] = {
        Source = "oicw_wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
        LHIKEaseOut = 0.5,		
    },
    ["oicw_dry"] = {
        Source = "oicw_dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
        LHIKEaseOut = 0.5,		
    },	
}