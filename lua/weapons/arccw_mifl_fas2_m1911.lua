SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - FA:S2"
SWEP.AdminOnly = false
SWEP.PrintName = "11GI"
SWEP.TrueName = "M1911A1"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Venerable, popular, and reliable pistol over a century old."
SWEP.Trivia_Manufacturer = "Colt"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "United States"
SWEP.Trivia_Year = 1911

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

SWEP.Slot = 1
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_m1911.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_m1911.mdl"
SWEP.ViewModelFOV = 60
SWEP.DefaultBodygroups = "000000000000"
SWEP.Damage = 35
SWEP.DamageMin = 17 -- damage done at maximum range
SWEP.Range = 30 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.PhysBulletMuzzleVelocity = 650
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 1.2
SWEP.VisualRecoilMult = 0.7
SWEP.MaxRecoilBlowback = 0.2
SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 1
    }
}

SWEP.BulletBones = {
    [1] = "Bullet_BONE"
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 230
SWEP.AccuracyMOA = 8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 310 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 220
SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "glock" -- the magazine pool this gun draws from
SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "weapons/arccw_mifl/fas2/1911/1911_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/1911/1911_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/1911/1911_distance_fire1.wav"
SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"
SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.25
SWEP.ShellRotateAngle = Angle(0, 90, 0)
SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.SpeedMult = 0.99
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.200

SWEP.IronSightStruct = {
    Pos = Vector(-3.56, 2, 1.96),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.CrouchPos = Vector(-1.5, -1, -2)
SWEP.CrouchAng = Angle(0, 0, -10)
SWEP.HolsterPos = Vector(-1, 1, -3)
SWEP.HolsterAng = Angle(-5, 10, -20)
SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.BarrelOffsetCrouch = Vector(0, 0, -2)
SWEP.CustomizePos = Vector(6, -3, -0.5)
SWEP.CustomizeAng = Angle(4, 20, 10)
SWEP.BarrelLength = 12

SWEP.AttachmentElements = {
    ["roni"] = {
        VMBodygroups = {
            {ind = 1, bg = 5},
        },
        Override_ActivePos = Vector(0, 0, -1),
        Override_HolsterPos = Vector(2,-5,-4),
        Override_HolsterAng = Angle(7.036, 30.016, -30),
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -2, -0.18),
            },
            [2] = {
                vpos = Vector(9, -1.8, -0.18),
                --vang = Angle(90, -90, 0)
            },
            [4] = {
                vpos = Vector(5.5, -0.2, -0.15),
            },
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.56, -2, -0.35),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
    },
    ["akimbo"] = {
        Override_ActivePos = Vector(2, 5, 0),
        Override_CrouchPos = Vector(8, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),		
    },
    ["shield"] = {
        Override_ActivePos = Vector(8, 0, 0)
    },
    ["rail"] = {
        VMBodygroups = {{ind = 5, bg = 1}}
    },
    ["rail_2"] = {
        VMBodygroups = {{ind = 7, bg = 1}}
    },
    ["mifl_fas2_m1911_stock"] = {
        VMBodygroups = {{ind = 4, bg = 1}}
    },
    ["mifl_fas2_g20_stock_g18"] = {
        VMBodygroups = {{ind = 4, bg = 2}}
    },
    ["mifl_fas2_m1911_mag50"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    },
    ["mifl_fas2_m1911_mag14"] = {
        VMBodygroups = {{ind = 2, bg = 2}}
    },	
    ["mifl_fas2_m1911_slide_2x"] = {
        TrueNameChange = "AF-2011",
        NameChange = "22GI",
        VMBodygroups = {
            {ind = 0, bg = 1},
            {ind = 1, bg = 5},
            {ind = 2, bg = 3}
        }
    },
    ["mifl_fas2_m1911_slide_para"] = {
        TrueNameChange = "MP 1911",
        NameChange = "MP 11GI",
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 3, bg = 1},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(13, -0.2, -0.15)
            },
            [2] = {
                vpos = Vector(7.5, -1.2, -0.18)
            }
        }
    },
    ["mifl_fas2_m1911_slide_alyx"] = {
        Override_IronSightStruct = {
            Pos = Vector(-3.56, 2, 1.7),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1
        },
        TrueNameChange = "M1911A9",
        NameChange = "11GI9",
        VMBodygroups = {
            {ind = 1, bg = 4}
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(4.5, 0, -0.15)
            },
            [2] = {
                vpos = Vector(7.5, 0.2, -0.18)
            }
        }
    },
    ["mifl_fas2_m1911_slide_carbine"] = {
        TrueNameChange = "M1911 Carbine",
        NameChange = "11GI-C",
        VMBodygroups = {{ind = 1, bg = 3}},
        AttPosMods = {
            [4] = {
                vpos = Vector(6.5, -0.2, -0.15)
            }
        }
    },
    ["mifl_fas2_m1911_slide_compact"] = {
        TrueNameChange = "Colt Defender",
        NameChange = "11GI-K",
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [4] = {
                vpos = Vector(1.2, -0.2, -0.15)
            }
        }
    },
    ["mifl_fas2_g20_slide_whisper"] = {
        TrueNameChange = "M1911-SD",
        NameChange = "11GI-SD",
        VMBodygroups = {{ind = 1, bg = 6}},
    }
}

SWEP.WorldModelOffset = {
    pos = Vector(-13.5, 5, -3),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = "optic_lp",
        Bone = "Slide_BONE",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(0, -0.2, -0.18),
            vang = Angle(0, 0, -90)
        },
        InstalledEles = {"rail"},
        MergeSlots = {11},
        ExtraSightDist = 13
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "Frame_BONE",
        Offset = {
            vpos = Vector(4, -2, -0.18),
            vang = Angle(0, 0, -90)
        },
        InstalledEles = {"rail_2"},
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.5, -2, -1),
    },
    {
        PrintName = "Slide",
        Slot = {"mifl_fas2_m1911_slide", "mifl_roni_conv"},
        Bone = "Frame_BONE",
        DefaultAttName = "Default Slide",
        Offset = {
            vpos = Vector(2.5, -2.2, -0.18),
            vang = Angle(0, 0, -90)
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Barrel_BONE",
        Offset = {
            vpos = Vector(2.5, -0.2, -0.15),
            vang = Angle(0, 0, -90)
        },
        ExcludeFlags = {"mifl_fas2_g20_slide_whisper", "mifl_fas2_m1911_slide_2x"}
    },
    {
        PrintName = "Magazine",
        Slot = "mifl_fas2_m1911_mag",
        DefaultAttName = "7-Round .45ACP"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(2, -2.5, -0.2),
            vang = Angle(0, 0, 0)
        },
        InstalledEles = {"akimbo"},
        ExcludeFlags = {"roni"},
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
        Slot = {"mifl_fas2_m1911_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "weapon_main",
        Offset = {
            vpos = Vector(-0.2, -1.8, -0.2),
            vang = Angle(0, -90, 0)
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
        Slot = {"go_perk", "go_perk_pistol", "perk_fas2"}
    },
    {
        Slot = "optic",
        Bone = "Slide_BONE",
        Offset = {
            vpos = Vector(0, -2, -0.18),
            vang = Angle(0, 0, -90)
        },
        Hidden = true,
        HideIfBlocked = true,
        RequireFlags = {"roni"},
        VMScale = Vector(1.25, 1.25, 1.25),
    },
}

--- hierarchy ---
SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[6].Installed or wep.Attachments[7].Installed then
        return anim .. "_akimbo"
    end

    if wep.Attachments[3].Installed == "mifl_fas2_roni" and wep:Clip1() == 0 then
        anim = anim .. "_roni"
    end

    if wep.Attachments[5].Installed == "mifl_fas2_m1911_mag50" then
        anim = anim .. "_50"
    end

    if wep.Attachments[5].Installed == "mifl_fas2_m1911_mag14" then
        anim = anim .. "_14"
    end	

    return anim
end

--- i hate this shit ---
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed == "mifl_fas2_roni" then
        if anim == "idle_empty" then
            return "idle"
        elseif anim == "draw_empty" then
            return "draw"
        elseif anim == "holster_empty" then
            return "holster"
        elseif anim == "fire" then
            return "fire_roni"
        elseif anim == "fire_iron" then
            return "fire_iron_roni"
        elseif anim == "fire_empty" then
            return "fire_roni"
        elseif anim == "fire_iron_empty" then
            return "fire_iron_empty_roni"
        end
    end
end


SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["idle_empty"] = {
        Source = "idle_empty"
    },
    ["draw"] = {
        Source = "draw"
    },
    ["draw_empty"] = {
        Source = "draw_empty"
    },
    ["holster"] = {
        Source = "Holster"
    },
    ["holster_empty"] = {
        Source = "holster_empty"
    },
    ["ready"] = {
        Source = "draw"
    },
    ["fire"] = {
        Source = "Fire1",
        ShellEjectAt = 0
    },
    ["fire_iron"] = {
        Source = "Fire_Iron",
        ShellEjectAt = 0
    },
    ["fire_empty"] = {
        Source = "Fire_Last",
        ShellEjectAt = 0
    },
    ["fire_iron_empty"] = {
        Source = "Fire_Last_Iron",
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
        Source = "reload_empty_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
    },
    ---------------------------------------------------------
    ["reload_50"] = {
        Source = "reload_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.3
    },
    ["reload_empty_50"] = {
        Source = "reload_empty_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen_50"] = {
        Source = "reload_nomen_50",
        LastClip1OutTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
    },
    ["reload_nomen_empty_50"] = {
        Source = "reload_empty_nomen_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3
    },
    ---------------------------------------------------------
    ["reload_14"] = {
        Source = "reload_14",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.3
    },
    ["reload_empty_14"] = {
        Source = "reload_empty_14",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen_14"] = {
        Source = "reload_nomen_14",
        LastClip1OutTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
    },
    ["reload_nomen_empty_14"] = {
        Source = "reload_empty_nomen_14",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3
    },	
    --------------------------------------------------------
    ["reload_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 52 / 30
    },
    ["reload_empty_akimbo"] = {
        Source = "Reload_Empty_Akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        Time = 70 / 30
    },
    ["reload_nomen_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 45 / 30
    },
    ["reload_nomen_empty_akimbo"] = {
        Source = "Reload_Empty_Akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        Time = 57 / 30
    },
    --------------------------------------------------------
    ["reload_empty_roni"] = {
        Source = "Reload_Empty_Roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen_empty_roni"] = {
        Source = "Reload_Empty_Nomen_Roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
    },
    ["reload_empty_roni_50"] = {
        Source = "Reload_Empty_50_Roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen_empty_roni_50"] = {
        Source = "Reload_Empty_Nomen_50_Roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3
    },
    ["reload_empty_roni_14"] = {
        Source = "Reload_Empty_14_Roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5
    },
    ["reload_nomen_empty_roni_14"] = {
        Source = "Reload_Empty_Nomen_14_Roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3
    },	
    --------------------------------------------------------
    ["fire_roni"] = {
        Source = "Fire1_Roni",
        ShellEjectAt = 0
    },
    ["fire_iron_roni"] = {
        Source = "Fire_Iron_Roni",
        ShellEjectAt = 0
    },
    ["fire_empty_roni"] = {
        Source = "Fire1_Roni",
        ShellEjectAt = 0
    },
    ["fire_iron_empty_roni"] = {
        Source = "Fire1_Roni",
        ShellEjectAt = 0
    },
}