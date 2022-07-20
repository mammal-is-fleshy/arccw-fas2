SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2"
SWEP.AdminOnly = false

SWEP.PrintName = "Pelly 24"
SWEP.TrueName = "M24"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "Bolt action sniper rifle adopted by the US military. Excels in long range combat."
SWEP.Trivia_Manufacturer = "Remington Arms"
SWEP.Trivia_Calibre = "7.62×51mm NATO"
SWEP.Trivia_Mechanism = "Bolt-Action"
SWEP.Trivia_Country = "United States"
SWEP.Trivia_Year = 1988

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_m24.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_m24.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 55
SWEP.DamageMin = 100 -- damage done at maximum range
SWEP.Num = 1
SWEP.Range = 60
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 700

SWEP.Recoil = 1.7
SWEP.RecoilSide = 1.2
SWEP.RecoilRise = 1.6

SWEP.ManualAction = true
SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "BOLT"
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_crossbow"
SWEP.NPCWeight = 180

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 220

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/m24/m24_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/m24/m24_suppressed_fire1.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/m24/m24_distance_fire1.wav"

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 3
SWEP.ShellRotateAngle = Angle(0, 180, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.35

SWEP.IronSightStruct = {
    Pos = Vector(-5.52, -7, 1.279),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
SWEP.NoLastCycle = true
SWEP.ActivePos = Vector(-0.2, -2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 0, 2)
SWEP.HolsterAng = Angle(-5, 5, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6, -1, -1)
SWEP.CustomizeAng = Angle(10, 15, 15)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {}
SWEP.ExtraSightDist = 5

SWEP.WorldModelOffset = {
    pos = Vector(-15, 7, -6),
    ang = Angle(-10, 0, 180)
}

SWEP.ShellRotateAngle = Angle(5, 90, 0)

SWEP.MirrorVMWM = true

SWEP.AttachmentElements = {
    ["mifl_fas2_m24_hg_jungle"] = {
        VMBodygroups = {	{ind = 1, bg = 2}, {ind = 2, bg = 1},	},
    },
    ["mifl_fas2_m24_hg_valk"] = {
        VMBodygroups = {	{ind = 1, bg = 6}, {ind = 2, bg = 4}, {ind = 3, bg = 1}	},
        AttPosMods = {
            [4] = {vpos = Vector(2, 0.5, 0)},
        }
    },
    ["mifl_fas2_m24_hg_sd"] = {
        VMBodygroups = {	{ind = 1, bg = 1}, {ind = 2, bg = 0},	},
    },
    ["mifl_fas2_m24_hg_82"] = {
        VMBodygroups = {	{ind = 1, bg = 3}, {ind = 2, bg = 0},	},
    },
    ["mifl_fas2_m24_hg_obrez"] = {
        VMBodygroups = {{ind = 1, bg = 4}, {ind = 2, bg = 2}, {ind = 3, bg = 1}},
        AttPosMods = {
            [3] = {vpos = Vector(9, -1.4, -0)},
            [4] = {vpos = Vector(2, 0.5, 0)},
        }
    },
    ["mifl_fas2_m24_mag_50"] = {
        VMBodygroups = {	{ind = 4, bg = 3},	},
    },
    ["mifl_fas2_m24_mag_23mm"] = {
        VMBodygroups = {	{ind = 4, bg = 2},	},
    },
    ["mifl_fas2_m24_mag_9mm"] = {
        VMBodygroups = {	{ind = 4, bg = 4},	},
    },
    ["mifl_fas2_m24_mag_300"] = {
        VMBodygroups = {	{ind = 4, bg = 1},	},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[1].Installed then vm:SetBodygroup(2, 3) end
end



SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = "optic",
        Bone = "Dummy04",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(-5, -2.5, 0),
            vang = Angle(0, 0, -90),
        },
        InstalledEles = {"rail", "nors"},
    },
    {
        PrintName = "Barrel",
        Slot = "mifl_fas2_m24_hg",
        DefaultAttName = "Default Barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Dummy04",
        Offset = {
            vpos = Vector(36, -1.4, -0),
            vang = Angle(0, 0, -90),
        },
        VMScale = Vector(1.5, 1.5, 1.5),
        ExcludeFlags = {"no_muzzle"},
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "Dummy04",
        Offset = {
            vpos = Vector(4, 0.5, 0),
            vang = Angle(0, 0, -90),
        },
        InstalledEles = {"ubrms"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Dummy04",
        Offset = {
            vpos = Vector(4, -1, 0.8),
            vang = Angle(0, 0, 180),
        },
        InstalledEles = {"tacms"},
    },
    {
        PrintName = "Magazine",
        Slot = "mifl_fas2_m24_mag",
        DefaultAttName = "7.62×51mm NATO"
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
        Bone = "Dummy04", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-4, 0, -1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
        VMScale = Vector(1.5, 1.5, 1.5),
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local nomen = (wep:GetBuff_Override("Override_FAS2NomenBackup") and "_nomen") or ""

    local reloadtime = (wep.Primary.ClipSize - wep:Clip1())

    return "Reload" .. reloadtime .. nomen
end


SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["ready"] = {
        Source = "draw_first3",
    },
    ["fire"] = {
        Source = "fire",
        MinProgress = 0.15,
    },
    ["fire_iron"] = {
        Source = "fire_scoped",
        MinProgress = 0.15,
    },
    ["cycle"] = {
        Source = "cock01",
        ShellEjectAt = 0.35,
        MinProgress = 0.95,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
    },
    ["cycle_iron"] = {
        Source = "cock01_scoped",
        ShellEjectAt = 0.35,
        MinProgress = 0.95,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
    },
    ["cycle_nomen"] = {
        Source = "pump01_nomen",
        ShellEjectAt = 0.35,
        MinProgress = 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
    },
    ["cycle_iron_nomen"] = {
        Source = "pump01_nomen_scoped",
        ShellEjectAt = 0.35,
        MinProgress = 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN,
    },


    ["Reload1"] = {
        Source = "reload_1",
        --MinProgress = 3.5,
    },
    ["Reload2"] = {
        Source = "reload_2",
        --MinProgress = 3.8,
    },
    ["Reload3"] = {
        Source = "reload_3",
        --MinProgress = 4.2,
    },
    ["Reload4"] = {
        Source = "reload_4",
        --MinProgress = 4.6,
    },
    ["Reload5"] = {
        Source = "reload_empty",
        ShellEjectAt = 0.35,
        --MinProgress = 3.8,
    },
-- Nomen
    ["Reload1_nomen"] = {
        Source = "Reload_1_nomen",
        --MinProgress = 3.5*0.8,
    },
    ["Reload2_nomen"] = {
        Source = "Reload_2_nomen",
        --MinProgress = 3.8*0.8,
    },
    ["Reload3_nomen"] = {
        Source = "Reload_3_nomen",
        --MinProgress = 4.2*0.8,
    },
    ["Reload4_nomen"] = {
        Source = "reload_4_nomen",
        --MinProgress = 4.6*0.8,
    },
    ["Reload5_nomen"] = {
        Source = "reload_empty_nomen",
        ShellEjectAt = 0.35,
        --MinProgress = 3.8*0.8,
    },
}