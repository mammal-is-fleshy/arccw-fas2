SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "PXC-9"
SWEP.TrueName = "MP5A3"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Arguably the best submachine gun to ever exist, the MP5 is accurate, stable and compact. Police and military forces all over the world make extensive use of it and its many variants."
SWEP.Trivia_Manufacturer = "Heckler and Koch"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1993

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_mp5.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_mp5.mdl"
SWEP.ViewModelFOV = 54

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 25
SWEP.DamageMin = 17 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 6
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 900

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.2

SWEP.Delay = 60 / 800 -- 60 / RPM.
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

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/mp5/mp5_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/mp5/mp5k_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/mp5/mp5_distance_fire1.wav"

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
    Pos = Vector(-3.945, -7, 1.848),
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

SWEP.CrouchPos = Vector(-0.5, -2, -0.2)
SWEP.CrouchAng = Angle(0, 0, -7.5)

SWEP.HolsterPos = Vector(1, 2, 2)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6, -1, -1)
SWEP.CustomizeAng = Angle(10, 15, 15)

SWEP.BarrelLength = 18

SWEP.AttachmentElements = {
    ["akimbo"] = {
        Override_ActivePos = Vector(2.5, 4, 0),
        Override_HolsterPos = Vector(2,2,3),
        Override_HolsterAng = Angle(-20, 0, -5),	
    },
    ["shield"] = {
        Override_ActivePos = Vector(8, 0, 1),
        Override_CrouchPos = Vector(8, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),	
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),			
    },		
    ["buftube"] = {
        VMBodygroups = {
            {ind = 5, bg = 6},
        },
    },
    ["mifl_fas2_uni_rif_nostock"] = {
        VMBodygroups = {
            {ind = 5, bg = 2},
        },
    },
    ["mifl_fas2_mp5_stock_g3"] = {
        VMBodygroups = {
            {ind = 5, bg = 5},
        },
    },
    ["mifl_fas2_mp5_stock_fish"] = {
        VMBodygroups = {
            {ind = 5, bg = 7},
        },
    },	
    ["mifl_fas2_mp5_hg_sd"] = {
        VMBodygroups = {
            {ind = 3, bg = 2},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(11, 0.2, 0),
                vang = Angle(0, 0, -90),
            }
        }
    },
    ["mifl_fas2_mp5_hg_grip"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
        },
    },
    ["mifl_fas2_mp5_stock_pdw"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
    },
    ["mifl_fas2_mp5_stock_ump"] = {
        VMBodygroups = {
            {ind = 5, bg = 3},
        },
    },	
    ["mifl_fas2_mp5_hg_fish"] = {
        VMBodygroups = {{ind = 1, bg = 6},{ind = 2, bg = 4},{ind = 3, bg = 4},{ind = 6, bg = 1}},
        AttPosMods = { [3] = { vpos = Vector(22.5, -1.5, 0), }, [1] = { vpos = Vector(3.5, -3.6, 0), }, [4] = { vpos = Vector(11, 0.6, 0), },},	
        Override_IronSightStruct = {
            Pos = Vector(-3.945, -5, 0),
            Ang = Angle(0.25, 0, 0),
            Magnification = 1.1,
        },		
	},		
    ["mifl_fas2_mp5_hg_eod"] = {
        VMBodygroups = {
            {ind = 3, bg = 3},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(21.2, -1, 0),
            },
            [4] = {
					vpos = Vector(12, 0.5, 0),
            },			
        },
    },
    ["mifl_fas2_mp5_hg_k"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 3, bg = 4},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(12.5, -1, 0),
            },
        },
    },
    ["mifl_fas2_mp5_hg_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 5},
            {ind = 3, bg = 4},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(11.5, -1, 0),
            },
        },
    },
    ["mifl_fas2_mp5_hg_mw2"] = {
        VMBodygroups = {
            {ind = 1, bg = 3},
            {ind = 2, bg = 4},
            {ind = 3, bg = 4},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(14, -1, 0),
            },
        },
    },
    ["mifl_fas2_mp5_hg_g3"] = {
        VMBodygroups = {
            {ind = 1, bg = 4},
            {ind = 3, bg = 4},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(29, -1, 0),
            },
            [4] = {
                vpos = Vector(11, 0, 0),
            },
        },
    },
    ["mifl_fas2_mp5_ump_k"] = {
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 3, bg = 4},
            {ind = 2, bg = 2},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.945, -7, 1.552),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(2, -3.4, 0),
            },
            [3] = {
                vpos = Vector(12, -1, 0),
            },
        },
    },
    ["mifl_fas2_mp5_ump_usc"] = {
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 3, bg = 4},
            {ind = 2, bg = 3},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.945, -7, 1.552),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(2, -3.4, 0),
            },
            [3] = {
                vpos = Vector(28, -1, 0),
            },
            [4] = {
                vpos = Vector(11, 0, 0),
            },
        },
    },
    ["mifl_fas2_mp5_ump_nor"] = {
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 3, bg = 4},
            {ind = 2, bg = 1},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.945, -7, 1.552),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(2, -3.4, 0),
            },
            [3] = {
                vpos = Vector(16.5, -1, 0),
            },
            [4] = {
                vpos = Vector(11, 0, 0),
            },
        },
    },
    ["mifl_fas2_mp5_mag_20"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
        },
    },
    ["mifl_fas2_mp5_mag_30"] = {
        VMBodygroups = {
            {ind = 4, bg = 3},
        },
    },
    ["mifl_fas2_mp5_mag_50"] = {
        VMBodygroups = {
            {ind = 4, bg = 6},
        },
    },
    ["mifl_fas2_mp5_mag_waffle"] = {
        VMBodygroups = {
            {ind = 4, bg = 7},
        },
    },
    ["mifl_fas2_mp5_mag_45_30"] = {
        VMBodygroups = {
            {ind = 4, bg = 9},
        },
    },	
    ["mifl_fas2_mp5_mag_10_20"] = {
        VMBodygroups = {
            {ind = 4, bg = 8},
        },
    },		
    ["mifl_fas2_mp5_mag_15"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
        },
    },
    ["mifl_fas2_mp5_mag_80"] = {
        VMBodygroups = {
            {ind = 4, bg = 4},
        },
    },
    ["mifl_fas2_mp5_mag_20_70"] = {
        VMBodygroups = {{ind = 4, bg = 10},}, },
    ["mifl_fas2_mp5_mag_waffle_80"] = {
        VMBodygroups = {{ind = 4, bg = 11},}, },		
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[1].Installed then vm:SetBodygroup(6, 0) end
end

SWEP.WorldModelOffset = {
    pos = Vector(-16, 5.5, -6),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic", "optic_lp"},
        Bone = "Dummy01",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(3.5, -3.4, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
        VMScale = Vector(1.2, 1.2, 1.2)
    },
    {
        PrintName = "Handguard",
        Slot = "mifl_fas2_mp5_hg",
        Bone = "Dummy01",
        DefaultAttName = "Standard Handguard",
        Offset = {
            vpos = Vector(8.5, 0, 0),
            vang = Angle(0, 0, -90),
        }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(17, -1, 0),
            vang = Angle(0, 0, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
        ExcludeFlags = {"mifl_fas2_mp5_hg_sd"}
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(11, 1, 0),
            vang = Angle(0, 0, -90),
        },
        MergeSlots = {5},
        ExcludeFlags = {"mifl_fas2_mp5_hg_k", "mifl_fas2_mp5_ump_k", "mifl_fas2_mp5_hg_grip", "mifl_fas2_mp5_hg_no"},
    },
    {
        PrintName = "INTEG-UBGL",
        Hidden = true,
        Slot = "ubgl",
        Bone = "Dummy01",
        ExcludeFlags = {"mifl_fas2_mp5_hg_k", "mifl_fas2_mp5_ump_k", "mifl_fas2_mp5_hg_grip", "mifl_fas2_mp5_hg_no"},
        Offset = {
            vpos = Vector(7.5, 0, 0),
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(8, -1, 1),
            vang = Angle(0, 0, 180),
        },
        ExtraSightDist = 15,
        CorrectivePos = Vector(0.4, -2, -0.25),
    },
    {
        PrintName = "Magazine",
        Slot = {"mifl_fas2_mp5_mag"},
        DefaultAttName = "30-Round 9mm"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(4, -3, -0.5),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"akimbo"},
        RequireFlags = {"Akimbo_Yes"},
        MergeSlots = {9}		
    },
    {
        Hidden = true,
        Slot = {"mifl_fas2_lhand_shield"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(3, -1.2, -1),
            vang = Angle(0, 0, 0)
        },
        InstalledEles = {"shield"}
    },	
    {
        PrintName = "Stock",
        Slot = {"go_stock", "mifl_fas2_mp5_stock", "mifl_fas2_uni_stock"},
        DefaultAttName = "Standard Stock",
        Bone = "Dummy01",
        Offset = {
            vpos = Vector(-7, -1.3, 0),
            vang = Angle(0, 0, -90),
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
            vpos = Vector(2, -0.8, -1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
    },
}

function SWEP:Hook_NameChange(name)
    local pre = GetConVar("arccw_truenames"):GetBool() and "MP5" or "PXC"
    local post = GetConVar("arccw_truenames"):GetBool() and "A3" or "-9"
    local mid = ""
    local ump = false
    local hg = self.Attachments[2].Installed
    local mag = self.Attachments[7].Installed
    local stock = self.Attachments[9].Installed

    if hg == "mifl_fas2_mp5_hg_eod" then
        post = " EOD"
    elseif hg == "mifl_fas2_mp5_hg_g3" then
        post = "-C"
    elseif hg == "mifl_fas2_mp5_hg_grip" then
        post = "-G"
    elseif hg == "mifl_fas2_mp5_hg_k" then
        mid = "K"
        post = ""
    elseif hg == "mifl_fas2_mp5_hg_mw2" then
        mid = "K"
        post = " SOP"
    elseif hg == "mifl_fas2_mp5_hg_no" then
        post = " Kurz"
    elseif hg == "mifl_fas2_mp5_hg_sd" then
        post = "SD"
    elseif hg == "mifl_fas2_mp5_ump_k" then
        pre = GetConVar("arccw_truenames"):GetBool() and "UMP" or "UXP"
        mid = "9"
        post = "-K"
        ump = true
    elseif hg == "mifl_fas2_mp5_ump_nor" then
        pre = GetConVar("arccw_truenames"):GetBool() and "UMP" or "UXP"
        mid = "9"
        post = ""
        ump = true
    elseif hg == "mifl_fas2_mp5_ump_usc" then
        pre = GetConVar("arccw_truenames"):GetBool() and "UMP" or "UXC"
        mid = "-9"
        post = ""
        ump = true
    end

    if post == "A3" then
        if stock == "mifl_fas2_uni_rif_nostock" then
            post = "A1"
        elseif stock == "mifl_fas2_mp5_stock_g3w" then
            post = "A2"
        elseif stock == "mifl_fas2_mp5_stock_pdw" then
            post = "-PDW"
        elseif stock then
            post = ""
        end
    end

    if mag == "mifl_fas2_mp5_mag_20" or mag == "mifl_fas2_mp5_mag_45_30" or mag == "mifl_fas2_mp5_mag_20_70" then
        if ump then
            mid = "45"
        else
            post = post .. "/45"
        end
    elseif mag == "mifl_fas2_mp5_mag_30" or mag == "mifl_fas2_mp5_mag_10_20" then
        if ump then
            mid = "40"
        else
            post = post .. "/40"
        end
    elseif mag == "mifl_fas2_mp5_mag_waffle" or mag == "mifl_fas2_mp5_mag_waffle_80" then
        if ump then
            mid = "X223"
        else
            post = post .. "/X223"
        end
    end

    return pre .. mid .. post
end

SWEP.Hook_SelectReloadAnimation = function(wep, anim) --- hierarchy ---
    local nomened = wep.Attachments[11].Installed == "mifl_fas2_perk_nomen"
    local onehand = wep.Attachments[2].Installed == "mifl_fas2_mp5_hg_no"
    local kurz = wep.Attachments[2].Installed == "mifl_fas2_mp5_hg_k" or wep.Attachments[2].Installed == "mifl_fas2_mp5_ump_k" or wep.Attachments[2].Installed == "mifl_fas2_mp5_hg_mw2"
    local eighty = wep.Attachments[7].Installed == "mifl_fas2_mp5_mag_80" or wep.Attachments[7].Installed == "mifl_fas2_mp5_mag_20_70" or wep.Attachments[7].Installed == "mifl_fas2_mp5_mag_waffle_80"


    if wep.Attachments[8].Installed or wep.Attachments[9].Installed then return anim .. "_akimbo" end
    if (kurz or onehand) and eighty then return anim .. "_k_80" end
    if eighty then return anim .. "_80" end

	
    if kurz then return anim .. "_k" end
    if onehand then return anim .. "_one" end	


    if kurz and nomened then return anim .. "_nomen_k" end
    if onehand and nomened then return anim .. "_nomen_one" end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "deploy",
    },
    ["ready"] = {
        Source = "deploy_first3",
    },
    ["fire"] = {
        Source = {"shoot2"},
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "idle",
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
    },
    ["reload_nomen_empty"] = {
        Source = "reload_empty_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },


    ["reload_80"] = {
        Source = "reload_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_empty_80"] = {
        Source = "reload_empty_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_empty_k_80"] = {
        Source = "reload_empty_k_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_nomen_80"] = {
        Source = "reload_nomen_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_nomen_empty_80"] = {
        Source = "reload_empty_nomen_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_k_80"] = {
        Source = "reload_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_nomen_k_80"] = {
        Source = "reload_nomen_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_nomen_empty_k_80"] = {
        Source = "reload_empty_nomen_k_80",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },

    ["reload_k"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_k"] = {
        Source = "reload_empty_k",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_nomen_k"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },
    ["reload_empty_nomen_k"] = {
        Source = "reload_empty_nomen_k",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },

    ["reload_one"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_one"] = {
        Source = "reload_empty_k",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_nomen_one"] = {
        Source = "reload_nomen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.35,
    },
    ["reload_nomen_empty_one"] = {
        Source = "reload_empty_nomen_k",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },

    ["reload_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = (80 / 30) * 1,
    },
    ["reload_nomen_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = (80 / 30) * 0.8,
    },
    ["reload_empty_akimbo"] = {
        Source = "reload_empty_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = (90 / 30) * 1,
    },
    ["reload_nomen_empty_akimbo"] = {
        Source = "reload_empty_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = (90 / 30) * 0.8,
    },
}