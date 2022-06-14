SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "CAM .380"
SWEP.TrueName = "MAC-11"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "Famous gangster machine pistol firing at a high rate."
SWEP.Trivia_Manufacturer = "Military Armament Corporation"
SWEP.Trivia_Calibre = ".380 ACP"
SWEP.Trivia_Mechanism = "Straight Blowback"
SWEP.Trivia_Country = "United States"
SWEP.Trivia_Year = 1972

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_mac11.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_mp5.mdl"
SWEP.ViewModelFOV = 54

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 25
SWEP.DamageMin = 14 -- damage done at maximum range
SWEP.Range = 30 -- in METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 32 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 1050

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.25

SWEP.Delay = 60 / 1050 -- 60 / RPM.
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
SWEP.NPCWeight = 170

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/mac11/mac11_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/mac11/mac11_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/mac11/mac11_distance_fire1.wav"

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.275

SWEP.IronSightStruct = {
    Pos = Vector(-4.054, -5, 1.335),
    Ang = Angle(0.275, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(1, -1.5, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, 0, -0.2)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 2, 2)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6, -1, -1)
SWEP.CustomizeAng = Angle(10, 15, 15)

SWEP.BarrelLength = 18

SWEP.AttachmentElements = {
    ["akimbo"] = {
        Override_ActivePos = Vector(2, 1, 0),
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),			
    },
    ["shield"] = {
        Override_ActivePos = Vector(8, 2, 0),
        Override_CrouchPos = Vector(0, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),	
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),			
    },	
    ["mifl_fas2_mp5_stock_pdw"] = {
        VMBodygroups = {{ind = 6, bg = 5}}
    },
    ["mifl_fas2_ak_stock_rpk"] = {
        VMBodygroups = {{ind = 6, bg = 2}}
    },
    ["mifl_fas2_ak_stock_ske"] = {
        VMBodygroups = {{ind = 6, bg = 4}}
    },
    ["mifl_fas2_uni_rif_nostock"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },
    ["buftube"] = {
        VMBodygroups = {{ind = 6, bg = 3}}
    },
    ["rail"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        AttPosMods = { [5] = { vpos = Vector(6, -1.8, 1.2) },		},
    },
    ["rail_s"] = {
        VMBodygroups = {{ind = 5, bg = 1}}
    },
    ["mifl_fas2_m11_rail"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
        Override_IronSightStruct = {
            Pos = Vector(-4.054, -8, 0.2),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1
        },
    },
    ["bottom"] = {
        VMBodygroups = {{ind = 3, bg = 2}}
    },
    ["mifl_fas2_m11_mag_16"] = {
        VMBodygroups = {{ind = 1, bg = 1}}
    },
    ["mifl_fas2_m11_mag_64"] = {
        VMBodygroups = {{ind = 1, bg = 3}}
    },
    ["mifl_fas2_m11_mag_48"] = {
        VMBodygroups = {{ind = 1, bg = 2}}
    },
    ["mifl_fas2_m11_muz_k"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        AttPosMods = { [3] = { vpos = Vector(7.4, 0, 1.5) },		},
    },
    ["mifl_fas2_m11_muz_long"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
        AttPosMods = { [3] = { vpos = Vector(17.2, 0, 1.5) },		},
    },
    ["mifl_fas2_m11_muz_m4"] = {
        VMBodygroups = {{ind = 2, bg = 7}},
        AttPosMods = { [3] = { vpos = Vector(17, 0, 1.5) },		},
    },
    ["mifl_fas2_m11_muz_a1"] = {
        VMBodygroups = {{ind = 2, bg = 5}},
        AttPosMods = { [3] = { vpos = Vector(21, 0, 1.5) },		},
    },
    ["mifl_fas2_m11_muz_a2"] = {
        VMBodygroups = {{ind = 2, bg = 6}},
        AttPosMods = { [3] = { vpos = Vector(21, 0, 1.5) },		},
    },
    ["mifl_fas2_m11_muz_sd"] = {
        VMBodygroups = {{ind = 2, bg = 3}}
    },
    ["mifl_fas2_m11_muz_thomp"] = {
        VMBodygroups = {{ind = 2, bg = 4}, {ind = 4, bg = 2}},
        AttPosMods = { [3] = { vpos = Vector(22, 0, 1.5) },		},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local optic = wep.Attachments[1].Installed
    local barrel = wep.Attachments[2].Installed
    local fg = wep.Attachments[4].Installed
    local ls = wep.Attachments[5].Installed

    if optic and ls then vm:SetBodygroup(5, 0) end
    if fg and barrel == "mifl_fas2_m11_muz_thomp" then vm:SetBodygroup(4, 1) end
    if optic and fg then vm:SetBodygroup(4, 1) end
    if optic then vm:SetBodygroup(3, 1) end
end


SWEP.ExtraSightDist = 10

SWEP.WorldModelOffset = {
    pos = Vector(-20, 6, -3),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic", "optic_lp", "mifl_fas2_m11_optic"},
        Bone = "weapon_main",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(1.5, 0, 4.05),
            vang = Angle(0, 0, 0),
        },
        ExtraSightDist = 8,
        InstalledEles = {"rail"},
        VMScale = Vector(1.2, 1.2, 1.2)
    },
    {
        PrintName = "Barrel",
        Slot = "mifl_fas2_m11_muz",
        Bone = "weapon_main",
        DefaultAttName = "Standard Handguard",
        Offset = {
            vpos = Vector(5, -0.5, 1),
            vang = Angle(0, 0, 0),
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(8, 0, 1.5),
            vang = Angle(0, 0, 0),
        },
        ExcludeFlags = {"mifl_fas2_m11_muz_sd"}
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(7, 0, -0.75),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"bottom"},
		GivesFlags = {"Akimbo_No"},
        ExcludeFlags = {"Akimbo_No1"},			
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(0.8, -1.2, 0.9),
            vang = Angle(0, 0, 90),
        },
        InstalledEles = {"rail_s"},
        ExtraSightDist = 12,
        CorrectivePos = Vector(1, -2, -5),
    },
    {
        PrintName = "Magazine",
        Slot = {"mifl_fas2_m11_mag"},
        DefaultAttName = "32-Round .380 ACP"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(8, -2.5, -0.25),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"akimbo"},
        ExcludeFlags = {"Akimbo_No"},	
		GivesFlags = {"Akimbo_No1"},		
        MergeSlots = {8}		
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
        Slot = {"go_stock", "mifl_fas2_m11_stock", "mifl_fas2_uni_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(-5, 0, 1.7),
            vang = Angle(0, 0, 0),
        },
        VMScale = Vector(1.2, 1.2, 1.2)
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
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(1.5, -1, 0.8),
            vang = Angle(0, 0, 0),
        },
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local optic = wep.Attachments[1].Installed
    local fls = wep.Attachments[6].Installed == "mifl_fas2_m11_mag_16"
    local drm = wep.Attachments[6].Installed == "mifl_fas2_m11_mag_64"

    if wep.Attachments[7].Installed or wep.Attachments[8].Installed then
        return anim .. "_akimbo"
    end

    if optic and wep:Clip1() == 0 then
        anim = anim .. "_optic"
    end

    if fls then
        anim = anim .. "_flush"
    elseif drm then
        anim = anim .. "_drum"
    end

    return anim
end

SWEP.Animations = {
    ["idle"] = false,
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
        Source = "draw_first",
        LHIK = true,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["fire"] = {
        Source = {"fire"},
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_last",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.3,
    },
    ["reload_empty_optic"] = {
        Source = "reload_empty_optic",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_empty"] = {
        Source = "reload_empty_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_empty_optic"] = {
        Source = "reload_empty_optic_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },


    ["reload_flush"] = {
        Source = "reload_flush",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty_flush"] = {
        Source = "reload_empty_flush",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.3,
    },
    ["reload_empty_optic_flush"] = {
        Source = "reload_empty_flush_optic",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_flush"] = {
        Source = "reload_flush_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_empty_flush"] = {
        Source = "reload_empty_flush_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_empty_optic_flush"] = {
        Source = "reload_empty_flush_optic_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },

    ["reload_drum"] = {
        Source = "reload_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
    ["reload_empty_drum"] = {
        Source = "reload_empty_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.3,
    },
    ["reload_empty_optic_drum"] = {
        Source = "reload_empty_drum_optic",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_drum"] = {
        Source = "reload_drum_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_empty_drum"] = {
        Source = "reload_empty_drum_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },
    ["reload_nomen_empty_optic_drum"] = {
        Source = "reload_empty_drum_optic_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.4,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.3,
    },


    ["reload_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Mult = 0.7
    },
    ["reload_empty_akimbo"] = {
        Source = "reload_empty_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Mult = 0.7
    },
    ["reload_nomen_akimbo"] = {
        Source = "reload_akimbo_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Mult = 0.6	
    },
    ["reload_nomen_empty_akimbo"] = {
        Source = "reload_empty_akimbo_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Mult = 0.6		
    },
}