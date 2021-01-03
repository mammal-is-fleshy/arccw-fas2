att.PrintName = "M79 Buckshot"
att.Icon = nil --Material("entities/arccw_mifl_fas2_ak_mag_762s.png", "mips smooth")
att.Description = "A grenade loaded with buckshot pellets. Because of the low grenade pressure, damage isn't as spectacular as one would expect."
att.Desc_Pros = {
    "Fires buckshot"
}
att.Desc_Cons = {
}
att.SortOrder = 2

att.Slot = {"mifl_fas2_m79_ammo"}
att.Override_ShootEntity = false
att.Override_Num = 30
att.Mult_Damage = 300 / 150
att.Mult_DamageMin = 60 / 60
att.Mult_ShootPitch = 0.75

att.Hook_Compatible = function(wep, data)
    if (wep:GetBuff_Override("Override_ClipSize") or 1) == 4 then return false end
end

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound then return "weapons/arccw_mifl/fas2/ks23/ks23_fire1.wav" end
end