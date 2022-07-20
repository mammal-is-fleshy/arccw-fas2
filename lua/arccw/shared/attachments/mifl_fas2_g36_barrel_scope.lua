att.PrintName = "Combat Handguard"
att.Icon = Material("entities/arccw_mifl_fas2_g36_hg_scoped.png", "mips smooth")
att.Description = "Medium barrel fitted with an optic."
att.SortOrder = 9.5
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "mifl_fas2_g36c_hg"

att.Mult_MoveSpeed = 0.8

att.Mult_Range = 1.6
att.Mult_Recoil = 0.8
att.Mult_SightTime = 1.21
att.Mult_AccuracyMOA = 0.7
att.Mult_RPM = 0.9

att.Mult_ShootPitch = 0.8

att.Add_BarrelLength = 15

att.AdditionalSights = {
    {
        Pos = Vector(0, 32, -3.63),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = true,	
    }
}
att.KeepBaseIrons = true

att.Model = "models/weapons/arccw/mifl_atts/fas2_optic_acog.mdl"
att.ModelBodygroups = "11"

att.Holosight = true
att.HolosightMagnification = 4
att.HolosightMagnificationMin = 4
att.HolosightMagnificationMax = 4
att.HolosightReticle = Material("mifl_fas2_reticle/g36.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.Colorable = true
att.HolosightBlackbox = true

att.ModelOffset = Vector(-24, -0.01, 2.15)