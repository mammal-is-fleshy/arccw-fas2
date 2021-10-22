SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false
SWEP.PrintName = "AR-C4"
SWEP.TrueName = "M4A1"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Standard issue carbine of the US military. Short barrel offers superior mobility at the cost of range compared to other full-length rifles."
SWEP.Trivia_Manufacturer = "Colt"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1993

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

SWEP.Slot = 2
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_m4a1.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_m4a1.mdl"
SWEP.ViewModelFOV = 62
SWEP.DefaultBodygroups = "000000000000"
SWEP.Damage = 35
SWEP.DamageMin = 24 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.PhysBulletMuzzleVelocity = 900
SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.8
SWEP.Delay = 60 / 800 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 2
    },
    {
        Mode = 1
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 165
SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 70
SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "weapons/arccw_mifl/fas2/m4a1/m4_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/m4a1/m4_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/m4a1/m4_distance_fire1.wav"
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
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.8
SWEP.SightTime = 0.27

SWEP.IronSightStruct = {
    Pos = Vector(-4.086, -9, 0.898),
    Ang = Angle(0, 0, 0),
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.ActivePos = Vector(1, 1, 1)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.CrouchPos = Vector(-0.45, 0, -0.2)
SWEP.CrouchAng = Angle(0, 0, -10)
SWEP.HolsterPos = Vector(1, -2, 1)
SWEP.HolsterAng = Angle(-15, 25, -10)
SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.CustomizePos = Vector(6, -1, -1)
SWEP.CustomizeAng = Angle(10, 15, 15)
SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["mifl_fas2_g36_stock_mp5"] = {
        VMBodygroups = { {ind = 5, bg = 6}, }, },
    ["buftube"] = {
        VMBodygroups = {
            {ind = 5, bg = 4},
        },
    },
    ["mifl_fas2_g20_stock_g18"] = {
        VMBodygroups = {
            {ind = 5, bg = 5},
        },
    },	
    ["mifl_fas2_sg55x_stock_sd"] = {
        VMBodygroups = {
            {ind = 5, bg = 4},
        },
    },
    ["mifl_fas2_m4a1_stock_a2"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
    },
    ["mifl_fas2_m4a1_stock_sd"] = {
        VMBodygroups = {
            {ind = 5, bg = 2},
        },
    },
    ["mifl_fas2_m4a1_stock_pdw"] = {
        VMBodygroups = {
            {ind = 5, bg = 3},
        },
    },
    ["whisperer"] = {
        NameChange = "AR-C4S",
        TrueNameChange = "M4A1-S",
        VMBodygroups = {
            {ind = 1, bg = 3},
            {ind = 2, bg = 3},
        },
    },
    ["mifl_fas2_m4a1_barrel_kompact"] = {
        NameChange = "AR-G6c",
        TrueNameChange = "M436",
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 2, bg = 2},
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.07, -9, 1.67),
            Ang = Angle(0.1, 0, 0.1),
            Magnification = 1.1
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(19, -1.2, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_a2"] = {
        NameChange = "AR-A2",
        TrueNameChange = "M16A2",
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 2, bg = 1},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(31, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_a3"] = {
        NameChange = "AR-A3",
        TrueNameChange = "M16A3",
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 2, bg = 1},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(31, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_no"] = {
        NameChange = "AR-Kurz",
        TrueNameChange = "M4A1 Kurz",
        VMBodygroups = {
            {ind = 1, bg = 6},
            {ind = 2, bg = 6},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(13, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_a1"] = {
        NameChange = "AR-A1",
        TrueNameChange = "M16A1",
        VMBodygroups = {
            {ind = 1, bg = 4},
            {ind = 2, bg = 4},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(36, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_jungle"] = {
        NameChange = "AR-A1",
        TrueNameChange = "M16-S",
        VMBodygroups = {
            {ind = 1, bg = 14},
            {ind = 2, bg = 4},
        },
    },
    ["mifl_fas2_m4a1_barrel_para_a1"] = {
        NameChange = "AR-A1C",
        TrueNameChange = "M16 Para",
        VMBodygroups = {
            {ind = 1, bg = 8},
            {ind = 2, bg = 7},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(23, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_a4"] = {
        NameChange = "AR-A4",
        TrueNameChange = "M16A4",
        VMBodygroups = {
            {ind = 1, bg = 13},
            {ind = 2, bg = 12},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(35, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_famas"] = {
        NameChange = "AR-CF",
        TrueNameChange = "M4FA",
        VMBodygroups = {
            {ind = 1, bg = 12},
            {ind = 2, bg = 8},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(21, -1.3, 0)
            },
            [1] = {
                    vpos = Vector(8, -6.5, 0),
            }
        },
        Override_IronSightStruct = {
            Pos = Vector(-4.086, -9, 0.45),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1
        },
    },
    ["mifl_fas2_m4a1_barrel_commando"] = {
        NameChange = "AR-C",
        TrueNameChange = "M4C",
        VMBodygroups = {
            {ind = 1, bg = 10},
            {ind = 2, bg = 9},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(17, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_ar2"] = {
        NameChange = "AR-Overlord",
        TrueNameChange = "AR4",
        VMBodygroups = {
            {ind = 1, bg = 11},
            {ind = 2, bg = 10},
        },
    },
    ["mifl_fas2_m4a1_barrel_heat"] = {
        NameChange = "AR-EOD",
        TrueNameChange = "M16 EOD",
        VMBodygroups = {
            {ind = 1, bg = 5},
            {ind = 2, bg = 5},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(29, -1.3, 0)
            }
        }
    },
    ["mifl_fas2_m4a1_barrel_ribs"] = {
        VMBodygroups = {
            {ind = 1, bg = 7},
        },
    },
    ["20"] = {
        VMBodygroups = {
            {ind = 3, bg = 2}
        }
    },
    ["60"] = {
        VMBodygroups = {
            {ind = 3, bg = 1}
        }
    },
    ["iron_none"] = {
        VMBodygroups = {
            {ind = 2, bg = 8}
        }
    },
    ["mifl_fas2_m4a1_mag_9mm_21"] = {
        VMBodygroups = {
            {ind = 3, bg = 4},
            {ind = 4, bg = 1},
        },
    },
    ["mifl_fas2_m4a1_mag_9mm_50"] = {
        VMBodygroups = {
            {ind = 3, bg = 6},
            {ind = 4, bg = 1},
        },
    },	
    ["mifl_fas2_m4a1_mag_9mm_32"] = {
        VMBodygroups = {
            {ind = 3, bg = 3},
            {ind = 4, bg = 1},
        },
    }
}

SWEP.ExtraSightDist = 10

SWEP.WorldModelOffset = {
    pos = Vector(-14, 5.5, -6),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local eles = data.eles
    for i, k in pairs(eles or {}) do
        if k == "mifl_fas2_m4a1_barrel_famas" and wep.Attachments[1].Installed then
            vm:SetBodygroup(2, 11)
        end
        if k == "iron_none" then
            vm:SetBodygroup(2, 8)
        end
    end
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic", "optic_lp"},
        Bone = "Dummy01",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(3, -2.65, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
        InstalledEles = {"iron_none"},
        ExtraSightDist = 10
    },
    {
        PrintName = "Handguard",
        Slot = "mifl_fas2_m4a1_hg",
        Bone = "Dummy01",
        DefaultAttName = "Standard Handguard",
        Offset = {
            vpos = Vector(10, 1, 0),
            vang = Angle(0, 0, -90)
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(26, -1.3, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
        ExcludeFlags = {"mifl_fas2_m4a1_barrel_sd", "mifl_fas2_m4a1_barrel_ar2"}
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(12, 0, 0),
            vang = Angle(0, 0, -90)
        },
        MergeSlots = {5},
        ExcludeFlags = {"mifl_fas2_m4a1_barrel_ar2"}
    },
    {
        PrintName = "INTEG-UBGL",
        Hidden = true,
        Slot = "ubgl",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(9, 0, 0),
            vang = Angle(0, 0, -90)
        },
        ExcludeFlags = {"mifl_fas2_m4a1_barrel_ar2", "mifl_fas2_m4a1_barrel_para_a1", "mifl_fas2_m4a1_barrel_commando", "mifl_fas2_m4a1_barrel_no"}
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(10, -2, 0.5),
            vang = Angle(0, 0, 180)
        },
        ExtraSightDist = 12,
        CorrectivePos = Vector(0, -2, 1.5)
    },
    {
        PrintName = "Magazine",
        Slot = {"mifl_fas2_m4a1_mag"},
        DefaultAttName = "30-Round 5.56mm"
    },
    {
        PrintName = "Stock",
        Slot = {"go_stock", "mifl_fas2_m4a1_stock", "mifl_fas2_uni_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(-2, -1.3, 0),
            vang = Angle(0, 0, -90)
        },
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
            vpos = Vector(2, -1, -0.6), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        }
    }
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[7].Installed == "mifl_fas2_m4a1_mag_9mm_50" then return anim .. "_50" end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "deploy"
    },
    ["ready"] = {
        Source = "deploy_first",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.7
    },
    ["fire"] = {
        Source = {"shoot"},
        ShellEjectAt = 0
    },
    ["fire_iron"] = {
        Source = "idle",
        ShellEjectAt = 0
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_nomen"] = {
        Source = "reload_nomen",
        Time = 68 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    ["reload_nomen_empty"] = {
        Source = "reload_empty_nomen",
        Time = 68 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    },
    --------------------------------------------------------
    ["reload_50"] = {
        Source = "reload_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
		LHIKEaseOut = 0.4,
    },
    ["reload_empty_50"] = {
        Source = "Reload_Empty_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5		
    },
    ["reload_nomen_50"] = {
        Source = "reload_nomen_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5	
    },
    ["reload_nomen_empty_50"] = {
        Source = "reload_empty_nomen_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5
    }	
}