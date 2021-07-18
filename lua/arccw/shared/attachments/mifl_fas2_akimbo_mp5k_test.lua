att.PrintName = "MP5K (test)"
att.Icon = Material("entities/arccw_mifl_fas2_akimbo_mp5k.png", "smooth")
att.Description = "the most gamer of them all"
att.Ignore = true
att.Desc_Pros = {
    "pro.fas2.akimbo",
}
att.Desc_Cons = {
    "con.fas2.akimbo"
}
att.AutoStats = true
att.Mult_HipDispersion = 1.5
att.Slot = "mifl_fas2_akimbo"
att.NotForNPCs = true
att.ModelOffset = Vector(0.2, -0.8, 0)

att.GivesFlags = {"handlocked"}

att.ModelScale = Vector(1, 1, 1)

att.SortOrder = 700 + 21

att.AddSuffix = " + MP5K"

att.MountPositionOverride = 0
att.Override_NoHideLeftHandInCustomization = true

att.Model = "models/weapons/arccw/mifl_atts/fas2/c_mp5k.mdl"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.Akimbo = true
att.Akimbo_PrintName = "MP5K"
att.Akimbo_TrueName = "MP5K"
att.Akimbo_Automatic = true
att.Akimbo_MuzzleEffect = "muzzleflash_mp5"
att.Akimbo_ClipSize = 30
att.Akimbo_Ammo = "pistol"
att.Akimbo_RPM = 900
att.Akimbo_Recoil = 0.3
att.Akimbo_RecoilSide = 0.3
att.Akimbo_RecoilRise = 0.92
att.Akimbo_Capacity = 30
att.Akimbo_AccuracyMOA = 15
att.Akimbo_ShootSound = "weapons/arccw_mifl/fas2/mp5/mp5_fire1.wav"
att.Akimbo_ShootSoundVol = 110
att.Akimbo_DistantShootSound = "weapons/arccw_mifl/fas2/mp5/mp5_distance_fire1.wav"

att.Akimbo_Animations = {
    ["reload"] = {
        Source = "wet",
        Time = 130 / 60,
        SoundTable = {
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magout_empty.wav", 	t = 11 / 60},
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magin.wav", 	    	t = 65 / 60},
        }
    },
    ["reload_empty"] = {
        Source = "dry",
        Time = 150 / 60,
        SoundTable = {
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magout_empty.wav", 	t = 11 / 60},
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magin.wav", 	    	t = 65 / 60},
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_boltpull.wav", 	    t = 85 / 60},
        }
    },
}