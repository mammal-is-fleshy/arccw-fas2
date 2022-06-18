SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - FA:S2"
SWEP.AdminOnly = false

SWEP.PrintName = "NPX-9"
SWEP.TrueName = "P226"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Compact pistol with multiple calibre options."
SWEP.Trivia_Manufacturer = "SIG Sauer"
SWEP.Trivia_Calibre = "9×19mm Parabellum"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1980

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_p226.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_p226.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 25
SWEP.DamageMin = 18 -- damage done at maximum range
SWEP.Range = 40 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 13 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 700

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 1.2
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.5

SWEP.Delay = 60 / 500 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 220

SWEP.AccuracyMOA = 7 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "glock" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/p226/p226_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/p226/p226_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/p226/p226_distance_fire1.wav"

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.25
SWEP.ShellRotateAngle = Angle(0, 180, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.99
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.200

SWEP.IronSightStruct = {
    Pos = Vector(-3.8, -2.5, 1.881),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(-0.5, -2.5, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0.5, -3, -2)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 2, 2)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.BarrelOffsetCrouch = Vector(0, 0, -2)

SWEP.CustomizePos = Vector(6, -3, -0.5)
SWEP.CustomizeAng = Angle(4, 20, 10)

SWEP.BarrelLength = 24

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local optic = wep.Attachments[1].Installed or wep.Attachments[11].Installed
    local slide = wep.Attachments[3].Installed
    local laser = wep.Attachments[2].Installed

    if laser and slide == "mifl_fas2_p226_slide_c" then vm:SetBodygroup(7, 2) end
    if optic and slide == "mifl_fas2_p226_roni" then vm:SetBodygroup(4, 0) end
    if optic and slide == "mifl_fas2_p226_roni" then vm:SetBodygroup(6, 0) end
    if optic and slide == "mifl_fas2_p226_roni" then vm:SetBodygroup(7, 0) end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed == "mifl_fas2_p226_roni" then
		if anim == "fire" then
            return "fire_roni"
        end
    end
end

SWEP.AttachmentElements = {
    ["mifl_fas2_p226_mag_45"] = {
        VMBodygroups = {{ind = 5, bg = 3},},},
    ["mifl_fas2_p226_mag_40"] = {
        VMBodygroups = {{ind = 5, bg = 1},},},
    ["mifl_fas2_p226_mag_357"] = {
        VMBodygroups = {{ind = 5, bg = 2},},},
    ["mifl_fas2_g20_stock_g18"] = {
        VMBodygroups = {
            {ind = 8, bg = 2},
        },
    },
    ["mifl_fas2_g20_stock_raptor"] = {
        VMBodygroups = {
            {ind = 8, bg = 1},
        },
    },
    ["mifl_fas2_p226_slide_c"] = {
        VMBodygroups = {	{ind = 2, bg = 3}, {ind = 1, bg = 1}	},
        AttPosMods = {
            [4] = {
                vpos = Vector(-6.5, 3, 0.15),
            },
        },
    },
    ["mifl_fas2_p226_slide_long"] = {
        VMBodygroups = {{ind = 2, bg = 1},},
        AttPosMods = {
            [4] = {
                vpos = Vector(-9.45, 3, 0.15),
            },
        },
    },
    ["mifl_fas2_p226_slide_carbine"] = {
        VMBodygroups = {{ind = 2, bg = 2},},
        AttPosMods = {
            [4] = {
                vpos = Vector(-15, 3, 0.15),
            },
        },
},
    ["akimbo"] = {
        Override_ActivePos = Vector(2, -2, 0),
        Override_CrouchPos = Vector(0, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),		
    },
    ["shield"] = {
        Override_ActivePos = Vector(8, 0, 0),
        Override_CrouchPos = Vector(8, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),			
    },
    ["ump_roni"] = {
        VMBodygroups = {	{ind = 2, bg = 4}, {ind = 3, bg = 1}, {ind = 4, bg = 1}	},
        Override_ActivePos = Vector(0, -5, 0),
        Override_HolsterPos = Vector(1,-5,-4),
        Override_HolsterAng = Angle(7.036, 30.016, -30),
        AttPosMods = {
            [1] = {
                vpos = Vector(-3.5, 4.8, 0.15),
            },
            [2] = {
                vpos = Vector(-10, 1.6, 0.15),
                --vang = Angle(90, -90, 0)
            },
            [4] = {
                vpos = Vector(-13.75, 2.8, 0.15),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.8, -10, 0.3),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
    },
    ["rail"] = {
        VMBodygroups = {
            {ind = 6, bg = 1},
        },
    },
    ["rail_2"] = {
        VMBodygroups = {
            {ind = 7, bg = 1},
        },
    },
}

SWEP.ExtraSightDist = 7

SWEP.WorldModelOffset = {
    pos = Vector(-17, 5.5, -2.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = "optic_lp",
        Bone = "frame",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(-2, 3.75, 0.15),
            vang = Angle(180,0,90),
        },
        InstalledEles = {"rail"},
        MergeSlots = {11},
        VMScale = Vector(1.25, 1.25, 1.25),
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "frame",
        Offset = {
            vpos = Vector(-6, 1.6, 0.15),
            vang = Angle(180,0,90),
        },
        InstalledEles = {"rail_2"},
        ExtraSightDist = 9,
        CorrectivePos = Vector(1, 0, -1),
        ExcludeFlags = {"mifl_fas2_g20_slide_raptor"}
    },
    {
        PrintName = "Slide",
        Slot = "mifl_fas2_p226_slide",
        Bone = "frame",
        DefaultAttName = "Default Slide",
        Offset = {
            vpos = Vector(-4.7, 2, -.2),
            vang = Angle(180,0,90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "frame",
        Offset = {
            vpos = Vector(-8, 3, 0.15),
            vang = Angle(180,0,90),
        },
        ExcludeFlags = {"mifl_fas2_g20_slide_whisper"}
    },
    {
        PrintName = "Magazine",
        Slot = "mifl_fas2_p226_mag",
        DefaultAttName = "13-Round 9mm"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(6, -2.8, 0.2),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"akimbo"},
        ExcludeFlags = {"ump_roni"},
        MergeSlots = {7},
    },
    {
        Hidden = true,
        Slot = {"mifl_fas2_lhand_shield"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(3, -1.2, 0.8),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"shield"},
    },
    {
        PrintName = "Stock",
        Slot = {"mifl_fas2_g20_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(-0.2, -1.8, -0.2),
            vang = Angle(0, -90, 0),
        },
        ExcludeFlags = {"ump_roni"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        DefaultAttName = "Standard Ammo"
    },
    {
        PrintName = "Perk",
        Slot = {"go_perk", "go_perk_pistol", "perk_fas2"}
    },
    {
        Slot = "optic",
        Bone = "frame",
        Offset = {
            vpos = Vector(-3.5, 4.8, 0.15),
            vang = Angle(180,0,90),
        },
        Hidden = true,
        HideIfBlocked = true,
        RequireFlags = {"ump_roni"},
        VMScale = Vector(1.25, 1.25, 1.25),
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[6].Installed or wep.Attachments[7].Installed then
        return anim .. "_akimbo"
    end

    if wep.Attachments[3].Installed == "mifl_fas2_p226_roni" then
        anim = anim .. "_roni"
    end

    if wep.Attachments[5].Installed == "mifl_fas2_p226_mag_45" then
        anim = anim .. "_stick"
    end

    return anim
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["idle_empty"] = {
        Source = "idle_empty"
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["holster_empty"] = {
        Source = "holster_empty",
    },
    ["ready"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire1",
        ShellEjectAt = 0,
    },
    ["fire_roni"] = {
        Source = "fire_roni",
        ShellEjectAt = 0,
    },	
    ["fire_iron"] = {
        Source = "fire_scoped2",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_last_iron",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_nomen"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
    },
    ["reload_nomen_empty"] = {
        Source = "reload_empty_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
---------------------------------------------------------
    ["reload_roni"] = {
        Source = "reload_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
    },
    ["reload_empty_roni"] = {
        Source = "reload_empty_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.5,
    },
    ["reload_nomen_roni"] = {
        Source = "reload_nomen_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.5,
    },
    ["reload_nomen_empty_roni"] = {
        Source = "reload_empty_nomen_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.5,
    },
--------------------------------------------------------
    ["reload_stick"] = {
        Source = "reload_stick",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty_stick"] = {
        Source = "reload_empty_stick",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4,
    },
    ["reload_nomen_stick"] = {
        Source = "reload_nomen_stick",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
    },
    ["reload_nomen_empty_stick"] = {
        Source = "reload_empty_nomen_stick",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
--------------------------------------------------------
    ["reload_roni_stick"] = {
        Source = "reload_stick",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.3,
    },
    ["reload_nomen_roni_stick"] = {
        Source = "reload_nomen_stick",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.3,
    },
    ["reload_nomen_empty_roni_stick"] = {
        Source = "reload_empty_nomen_stick_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.3,
    },
    ["reload_empty_roni_stick"] = {
        Source = "reload_empty_stick_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.3,
    },
--------------------------------------------------------
    ["reload_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
    },
    ["reload_empty_akimbo"] = {
        Source = "reload_empty_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
    },
    ["reload_nomen_akimbo"] = {
        Source = "reload_nomen_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
    },
    ["reload_nomen_empty_akimbo"] = {
        Source = "reload_empty_nomen_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
    },
}