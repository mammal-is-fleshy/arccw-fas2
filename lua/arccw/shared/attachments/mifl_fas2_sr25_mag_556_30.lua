att.PrintName = "30-Round 5.56mm SR-25"
att.Icon = Material("entities/arccw_mifl_fas2_g3_mag_556_30.png", "mips smooth")
att.Description = "Convert the rifle to fire intermediate cartridges. It's what Stoner would've wanted."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
}
att.SortOrder = 30 + 100
att.AutoStats = true
att.Slot = {"mifl_fas2_sr25_mag"}

att.Override_ClipSize = 30

att.Mult_AccuracyMOA = 3
att.Mult_RPM = 1.1

att.Mult_Damage = 0.8
att.Mult_DamageMin = 0.7

att.Mult_Recoil = 0.6
att.Mult_RecoilSide = 0.5
att.Mult_VisualRecoilMult = 0.8

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "Assault Rifle"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound then return "weapons/arccw_mifl/fas2/m4a1/m4_fire1.wav" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_mifl/fas2/m4a1/m4_suppressed_fire1.wav" end
end