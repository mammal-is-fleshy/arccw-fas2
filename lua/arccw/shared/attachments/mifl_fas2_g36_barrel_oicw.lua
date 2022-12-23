att.PrintName = "Grenadier Handguard"
att.Icon = Material("entities/arccw_mifl_fas2_g36_hg_oicw.png", "mips smooth")
att.Description = "Prototype grenadier rifle with top-mounted XM25 grenade launcher. Very heavy and bulky."
att.SortOrder = 8
att.Desc_Pros = {
    "Selectable underbarrel grenade launcher",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"Double tap +ZOOM to equip/dequip",
}
att.AutoStats = true
att.Slot = "mifl_fas2_g36c_hg"

att.Mult_MoveSpeed = 0.85

att.Mult_SightTime = 1.5
att.Mult_Recoil = 0.8
att.Mult_RPM = 0.9

att.Mult_ShootPitch = 0.8

att.Add_BarrelLength = 15

att.UBGL = true
att.ExcludeFlags = {"ubgl"}


att.UBGL_BaseAnims = true

att.UBGL_PrintName = "OICW"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 120
att.UBGL_Recoil = 1
att.UBGL_Capacity = 4

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1_grenade")
end

att.UBGL_Fire = function(wep, ubgl)
    if (wep:Clip2() <= 0) then return end

    wep:PlayAnimation("fire")

    wep:FireRocket("arccw_gl_m79_he", 3000)

    wep:EmitSound("weapons/grenade_launcher1.wav", 100)

    wep:SetClip2(wep:Clip2() - 1)

    wep:SetNextPrimaryFire(CurTime() + 0.5)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
	local clip = 4 + 1
	
    if wep:Clip2() >= clip then return end

    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + (wep:Clip2() == 0 and 3.5 or 3))

    wep:PlayAnimation(wep:Clip2() == 0 and "oicw_dry" or "oicw_wet", nil, true)

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(5, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "smg1_grenade")

    wep:SetClip2(load)
end
