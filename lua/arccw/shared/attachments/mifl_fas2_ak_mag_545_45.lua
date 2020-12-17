att.PrintName = "45-Round 5.45mm"
att.Icon = Material("entities/arccw_mifl_fas2_ak_mag_545.png", "mips smooth")
att.Description = "Convert the weapon into the modern AK-74, firing an intermediate cartridge in a larger stack."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.SortOrder = 45 + 200
att.AutoStats = true
att.Slot = "mifl_fas2_ak_mag"

att.ActivateElements = {"45_545", "5.45x39mm"}
att.Override_ClipSize = 45

att.Mult_Damage = 0.9
att.Mult_DamageMin = 0.9
att.Mult_Penetration = 0.8
att.Mult_Range = 0.8
att.Mult_Recoil = 0.8
att.Mult_RPM = 1.1

att.Override_Trivia_Calibre = "5.45x39mm"
att.Override_Ammo = "smg1"