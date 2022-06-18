SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FA:S2"
SWEP.AdminOnly = false

SWEP.PrintName = "Boar 12"
SWEP.TrueName = "TOZ-34"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Over/Under double barrelled shotgun commonly used in East Europe. Its vertically aligned long barrels give it considerable precision."
SWEP.Trivia_Manufacturer = "TOZ"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Break-Action"
SWEP.Trivia_Country = "Russia"
SWEP.Trivia_Year = 1964

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/mifl/fas2/c_toz34.mdl"
SWEP.WorldModel = "models/weapons/arccw/mifl/fas2/c_toz34.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 15
SWEP.DamageMin = 8 -- damage done at maximum range
SWEP.Num = 8
SWEP.RangeMin = 0
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 2 -- DefaultClip is automatically set.
SWEP.PhysBulletMuzzleVelocity = 700

SWEP.Recoil = 2.5
SWEP.RecoilSide = 1.2
SWEP.RecoilRise = 1.5

SWEP.Delay = 60 / 240 -- 60 / RPM.
SWEP.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 180

SWEP.AccuracyMOA = 20 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 50

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_mifl/fas2/toz34/toz_fp.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_mifl/fas2/rem870/sd_fire.wav"
SWEP.DistantShootSound = "weapons/arccw_mifl/fas2/toz34/toz_suppressed_fp.wav"

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/weapons/arccw/mifl/fas2/shell/23mm.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(-20, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.93
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.37

SWEP.IronSightStruct = {
    Pos = Vector(-4, -7, 4.1),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-5, 25, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(6, -1, -1)
SWEP.CustomizeAng = Angle(10, 15, 15)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {}

SWEP.ExtraSightDist = 10

SWEP.WorldModelOffset = {
    pos = Vector(-14, 5, -5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.AttachmentElements = {
    ["akimbo"] = {
        Override_ActivePos = Vector(2, 2, 1.2),
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),
    },
    ["shield"] = {
        Override_ActivePos = Vector(8, 0, -1),
        Override_CrouchPos = Vector(8, -3, 0),	
        Override_CrouchAng = Angle(0, 0, 0),	
        Override_HolsterPos = Vector(2,2,2),
        Override_HolsterAng = Angle(-20, 0, -5),			
    },		
    ["rail"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["mifl_fas2_toz_bar_2x_s"] = {
        VMBodygroups = {{ind = 2, bg = 1},{ind = 1, bg = 1} },
    },
    ["mifl_fas2_toz_bar_1x_s"] = {
        VMBodygroups = {{ind = 2, bg = 3},{ind = 1, bg = 1},{ind = 4, bg = 1}},
    },
    ["mifl_fas2_toz_bar_1x_l"] = {
        VMBodygroups = {{ind = 2, bg = 2},{ind = 4, bg = 1}	},
    },
    ["mifl_fas2_toz_bar_1x_sd"] = {
        VMBodygroups = {{ind = 2, bg = 4},{ind = 1, bg = 1}, {ind = 4, bg = 1}},
    },
    ["mifl_fas2_ks23_stock_k"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local barrel = wep.Attachments[4].Installed
    local ammobmg = wep.Attachments[5].Installed == "mifl_fas2_toz34_mag_50"
    local ammosnip = wep.Attachments[5].Installed == "mifl_fas2_toz34_mag_300"
    local ammorif = wep.Attachments[5].Installed == "mifl_fas2_toz34_mag_762"

    if ammobmg then vm:SetBodygroup(4, 2) end
    if ammobmg and barrel == "mifl_fas2_toz_bar_1x_l" then vm:SetBodygroup(4, 3) end
    if ammobmg and barrel == "mifl_fas2_toz_bar_1x_s" then vm:SetBodygroup(4, 3) end
    if ammobmg and barrel == "mifl_fas2_toz_bar_1x_sd" then vm:SetBodygroup(4, 3) end

    if ammorif then vm:SetBodygroup(4, 4) end
    if ammorif and barrel == "mifl_fas2_toz_bar_1x_l" then vm:SetBodygroup(4, 5) end
    if ammorif and barrel == "mifl_fas2_toz_bar_1x_s" then vm:SetBodygroup(4, 5) end
    if ammorif and barrel == "mifl_fas2_toz_bar_1x_sd" then vm:SetBodygroup(4, 5) end

    if ammosnip then vm:SetBodygroup(4, 6) end
    if ammosnip and barrel == "mifl_fas2_toz_bar_1x_l" then vm:SetBodygroup(4, 7) end
    if ammosnip and barrel == "mifl_fas2_toz_bar_1x_s" then vm:SetBodygroup(4, 7) end
    if ammosnip and barrel == "mifl_fas2_toz_bar_1x_sd" then vm:SetBodygroup(4, 7) end
end


SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = "optic",
        Bone = "Tube02",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(0, -3.35, 3),
            vang = Angle(90, 0, -90),
        },
        CorrectiveAng = Angle(0, 0, 0),
        VMScale = Vector(1.25, 1.25, 1.25),
        InstalledEles = {"rail"},
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "Tube02",
        Offset = {
            vpos = Vector(0, 0.5, 8),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"rail_bottom"},
        GivesFlags = {"Akimbo_No"},
        ExcludeFlags = {"Akimbo_No1"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Tube02",
        Offset = {
            vpos = Vector(1, -1.2, 5),
            vang = Angle(90, 0, 0),
        },
        InstalledEles = {"rail_side"},
        ExtraSightDist = 4,
        CorrectivePos = Vector(2, -2, -5),
    },
    {
        PrintName = "Barrel",
        Slot = "mifl_fas2_toz34_bar",
        DefaultAttName = "Standard Barrel"
    },
    {
        PrintName = "Shell",
        Slot = "mifl_fas2_toz34_mag",
        DefaultAttName = "12 Gauge"
    },
    {
        PrintName = "Left Hand",
        Slot = {"gso_extra_pistol_akimbo", "mifl_fas2_akimbo", "akimbotest"},
        Bone = "Akimbo_Base",
        DefaultAttName = "None",
        Offset = {
            vpos = Vector(4, -3, -2),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"akimbo"},
        ExcludeFlags = {"Akimbo_No"},
        GivesFlags = {"Akimbo_No1"},
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
        Slot = {"mifl_fas2_ks23_stock"},
        DefaultAttName = "Standard Stock",
        Offset = {
            vpos = Vector(0, -0.25, 1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        DefaultAttName = "Buckshot Shells"
    },
    {
        PrintName = "Perk",
        Slot = {"go_perk"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Box03", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(8, -1, 0.5),
            vang = Angle(0, 0, 0),
        },
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local oneb = wep.Attachments[4].Installed == "mifl_fas2_toz_bar_1x_l" or wep.Attachments[4].Installed == "mifl_fas2_toz_bar_1x_s" or wep.Attachments[4].Installed == "mifl_fas2_toz_bar_1x_sd"

    if wep.Attachments[6].Installed or wep.Attachments[7].Installed then
        return anim .. "_akimbo"
    end

    if oneb then
        return anim .. "_1"
    end

end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["ready"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire01",
    },
    ["fire_iron"] = {
        Source = "fire01_scoped",
        MinProgress = 0.15,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.4,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3,
        LHIK = true,
        LHIKEaseIn = 0.5,
        LHIKIn = 0.8,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.2,
    },

    ["reload_empty_1"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 2.8,
        LHIK = true,
        LHIKEaseIn = 0.3,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.4,
    },

    ["reload_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3,
    },
    ["reload_empty_akimbo"] = {
        Source = "reload_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3,
    },
}
