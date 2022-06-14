SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - FA:S2"
SWEP.AdminOnly = false
SWEP.PrintName = "Black Talon"
SWEP.TrueName = "Desert Eagle"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Large caliber magnum pistol with an imposing look. Intended for hunting, but there is no prey more dangerous than men."
SWEP.Trivia_Manufacturer = "Magnum Research"
SWEP.Trivia_Calibre = ".50 AE"
SWEP.Trivia_Mechanism = "Gas-operated"
SWEP.Trivia_Country = "United States"
SWEP.Trivia_Year = 1983

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

SWEP.Slot = 1
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_deagle.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_deagle.mdl"
SWEP.ViewModelFOV = 60
SWEP.DefaultBodygroups = "000000000000"
SWEP.Damage = 75
SWEP.DamageMin = 30 -- damage done at maximum range
SWEP.Range = 40 -- in METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.PhysBulletMuzzleVelocity = 650
SWEP.Recoil = 2
SWEP.RecoilSide = 1
SWEP.RecoilRise = 0.8
SWEP.VisualRecoilMult = 0.7
SWEP.MaxRecoilBlowback = 0.5
SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 1
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 230
SWEP.AccuracyMOA = 8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250
SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "deagle" -- the magazine pool this gun draws from
SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "weapons/arccw_mifl/fas2/deserteagle/de_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/deserteagle/de_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/deserteagle/de_distance_fire1.wav"
SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"
SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.25
SWEP.ShellRotateAngle = Angle(0, 0, -40)
SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.SpeedMult = 0.99
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.34

SWEP.IronSightStruct = {
    Pos = Vector(-4.875, -5, 1.65),
    Ang = Angle(0.3, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.ActivePos = Vector(0, -2, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.CrouchPos = Vector(-2, -3, -2)
SWEP.CrouchAng = Angle(0, 0, -10)
SWEP.HolsterPos = Vector(-1, 1, -3)
SWEP.HolsterAng = Angle(-5, 10, -20)
SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.BarrelOffsetCrouch = Vector(0, 0, -2)
SWEP.CustomizePos = Vector(6, -3, -0.5)
SWEP.CustomizeAng = Angle(4, 20, 10)
SWEP.BarrelLength = 12

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local optic = wep.Attachments[1].Installed or wep.Attachments[11].Installed
    local slide = wep.Attachments[3].Installed

    if optic and slide == "mifl_fas2_deagle_slide_2x" then vm:SetBodygroup(5, 2) end
    if optic and slide == "mifl_fas2_g20_slide_whisper" then vm:SetBodygroup(5, 3) end
    if optic and slide == "mifl_fas2_g20_slide_whisper" then vm:SetBodygroup(6, 2) end
    if optic and slide == "mifl_fas2_roni_marksman" then vm:SetBodygroup(5, 0) end
    if optic and slide == "mifl_fas2_roni_marksman" then vm:SetBodygroup(6, 0) end
end

SWEP.AttachmentElements = {
    ["mifl_fas2_g20_stock_g18"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
        },
    },
    ["mifl_fas2_g20_stock_raptor"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
        },
    },
    ["roni_dmr"] = {
        VMBodygroups = {
            --- {ind = 1, bg = 5},
        },
        Override_ActivePos = Vector(-1, -4, -1),
        Override_HolsterPos = Vector(1,-5,-4),
        Override_HolsterAng = Angle(7.036, 30.016, -30),
        AttPosMods = {
            [1] = {
            vpos = Vector(-3, -1.75, 2.625),
            },
            [2] = {
                vpos = Vector(6, 2.5, 2.625),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.875, -8, -0.08),
            Ang = Angle(0.2, 0, 0),
            Magnification = 1.1,
        },
    },
    ["akimbo"] = {
        Override_ActivePos = Vector(1, 2, 0),
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),
    },
    ["shield"] = {
        Override_ActivePos = Vector(8, 0, 0),
        Override_CrouchPos = Vector(0, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),	
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),			
    },	
    ["rail"] = {
        VMBodygroups = {{ind = 5, bg = 1}}
    },
    ["rail_2"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },

    ["mifl_fas2_g20_slide_whisper"] = {
        NameChange = "Nocturnal Talon",
        TrueNameChange = "Desert Eagle SD",
        VMBodygroups = {{ind = 2, bg = 2}},
        AttPosMods = {
            [2] = {
                vpos = Vector(1, 1.8, 2.625),
            },
        },
    },
    ["mifl_fas2_deagle_slide_c"] = {
        NameChange = "Talon Hatchling",
        TrueNameChange = "Desert Eagle Compact",
        VMBodygroups = {{ind = 2, bg = 4}, {ind = 1, bg = 1}},
        AttPosMods = {
            [4] = {
                vpos = Vector(2.2, 0.1, 2.625),
            },
        },
    },
    ["mifl_fas2_deagle_slide_r"] = {
        NameChange = "Scav Talon",
        TrueNameChange = "Desert Raptor",
        VMBodygroups = {{ind = 2, bg = 3}, {ind = 1, bg = 2}},
        AttPosMods = {
            [2] = {
                vpos = Vector(3, 1.5, 2.625),
            },
            [4] = {
                vpos = Vector(6.2, 0.35, 2.625),
            },
        },
    },
    ["mifl_fas2_deagle_slide_2x"] = {
        NameChange = "Orthus Talon",
        TrueNameChange = "Double Eagle",
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["mifl_fas2_deagle_slide_l"] = {
        NameChange = "Obelisk Talon",
        TrueNameChange = "Deadeye Eagle",
        VMBodygroups = {{ind = 2, bg = 5}},
        AttPosMods = {
            [4] = {
                vpos = Vector(9.8, 0.35, 2.625),
            },
        },
    },
    ["mifl_fas2_deagle_mag_357_12"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },
    ["mifl_fas2_deagle_mag_44_11"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["mifl_fas2_deagle_mag_9_18"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
}

SWEP.WorldModelOffset = {
    pos = Vector(-18, 6, -2.5),
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
            vpos = Vector(-3, -0.7, 2.625),
            vang = Angle(0, 0, -90)
        },
        InstalledEles = {"rail"},
        MergeSlots = {11},
        ExtraSightDist = 8
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "frame",
        Offset = {
            vpos = Vector(1, 1.8, 2.625),
            vang = Angle(0, 0, -90)
        },
        InstalledEles = {"rail_2"},
        ExtraSightDist = 15,
        CorrectivePos = Vector(0.75, -2, -1),
    },
    {
        PrintName = "Slide",
        Slot = {"mifl_fas2_deagle_slide"},
        Bone = "frame",
        DefaultAttName = "Default Slide",
        Offset = {
            vpos = Vector(-1.5, 1.5, 2.625),
            vang = Angle(0, 0, -90)
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Frame",
        Offset = {
            vpos = Vector(5, 0.1, 2.625),
            vang = Angle(0, 0, -90)
        },
        ExcludeFlags = {"mifl_fas2_g20_slide_whisper", "mifl_fas2_deagle_slide_r", "mifl_fas2_deagle_slide_2x", "roni_dmr"}
    },
    {
        PrintName = "Magazine",
        Slot = "mifl_fas2_deagle_mag",
        DefaultAttName = "7-Round .50 AE"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(4, -1.5, -0.1),
            vang = Angle(0, 0, 0)
        },
        InstalledEles = {"akimbo"},
        ExcludeFlags = {"roni_dmr"},
        MergeSlots = {7}
    },
    {
        Hidden = true,
        Slot = {"mifl_fas2_lhand_shield"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(3, -1.2, 0.8),
            vang = Angle(0, 0, 0)
        },
        InstalledEles = {"shield"}
    },
    {
        PrintName = "Stock",
        Slot = {"mifl_fas2_g20_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(-0.2, -1.8, -0.2),
            vang = Angle(0, -90, 0)
        },
        ExcludeFlags = {"roni_dmr"},
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
            vpos = Vector(-3, -1.75, 2.625),
            vang = Angle(0, 0, -90)
        },
        Hidden = true,
        HideIfBlocked = true,
        RequireFlags = {"roni_dmr"},
    },
}

--- hierarchy ---
SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[6].Installed or wep.Attachments[7].Installed then
        return anim .. "_akimbo"
    end

    if wep.Attachments[3].Installed == "mifl_fas2_roni_marksman" then
        anim = anim .. "_roni"
    end

    return anim
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed == "mifl_fas2_roni_marksman" and anim == "fire" then
        return "fire_roni"
    end
end


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
		Time = 0
    },
    ["idle_empty"] = {
        Source = "idle_empty"
    },
    ["draw"] = {
        Source = "deploy"
    },
    ["draw_empty"] = {
        Source = "deploy_empty"
    },
    ["holster"] = {
        Source = "Holster"
    },
    ["holster_empty"] = {
        Source = "holster_empty"
    },
    ["ready"] = {
        Source = "Drawst"
    },
    ["fire"] = {
        Source = "Fire1",
        ShellEjectAt = 0
    },
    ["fire_roni"] = {
        Source = "fire_roni",
        ShellEjectAt = 0,
        Time = 0.45
    },
    ["fire_iron"] = {
        Source = "Fire_Iron",
        ShellEjectAt = 0
    },
    ["fire_empty"] = {
        Source = "fire_last",
        ShellEjectAt = 0
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_last",
        ShellEjectAt = 0
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.7,
        LHIKEaseOut = 0.6
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.4,
        LHIKEaseOut = 0.25
    },
    ["reload_nomen_empty"] = {
        Source = "reload_nomen_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
    },
    ---------------------------------------------------------
    ["reload_roni"] = {
        Source = "reload_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.7,
        LHIKEaseOut = 0.6
    },
    ["reload_empty_roni"] = {
        Source = "reload_empty_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen_roni"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.4,
        LHIKEaseOut = 0.25
    },
    ["reload_nomen_empty_roni"] = {
        Source = "reload_nomen_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
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