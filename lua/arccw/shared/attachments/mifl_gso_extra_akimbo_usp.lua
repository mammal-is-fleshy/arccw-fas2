att.PrintName = "Left USP"
att.Icon = Material("entities/acwatt_mw2_akimbo.png", "smooth")
att.Description = "HOW."
att.Hidden = false
att.Desc_Pros = {
    "+100% more gun",
}
att.Desc_Cons = {
    "- Cannot use ironsights"
}
att.AutoStats = true
att.Mult_HipDispersion = 2
att.Slot = "gso_extra_pistol_akimbo"

att.ModelOffset = Vector(0, 0, 0)

att.GivesFlags = {"handlocked"}

att.ModelScale = Vector(1, 1, 1)

att.SortOrder = 1738

att.AddSuffix = " + USP"

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/gunsmith/mifl/c_usp_left_2.mdl"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_pistol"
att.UBGL_ClipSize = 15
att.UBGL_Ammo = "pistol"
att.UBGL_RPM = 650
att.UBGL_Recoil = .8
att.UBGL_RecoilSide = .55
att.UBGL_RecoilRise = .4
att.UBGL_Capacity = 15

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.Hook_Think = function(wep)
    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
        wep:Reload()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(false)
        wep:PrimaryAttack()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" and wep:Clip2() <= 0 then
        return "idle_empty"
    end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("pistol") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 170 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 1,
		Damage = 28,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 28
			local dmgmin = 12

			local delta = dist / 50

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/arccw_mifl/gso/usp/hkp2000-1.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)
    wep:SetClip2(wep:Clip2() - 1)
    
    if wep:Clip2() > 0 then
        wep:DoLHIKAnimation("shoot1", 30/60)
    else
        wep:DoLHIKAnimation("last", 30/60)
    end

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 15 + (1 * GetConVar("arccw_mw2_chambering"):GetInt())

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if Ammo(wep) <= 0 then return end

    if wep:Clip2() <= 0 then
        wep:DoLHIKAnimation("dry_akimbo", 58/30)
        wep:SetNextSecondaryFire(CurTime() + 58/30)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/gso/usp/hkp2000_clipout.wav", 	t = 8/30},
            {s = "weapons/arccw_mifl/gso/usp/hkp2000_clipin.wav", 	    t = 27/30},
            {s = "weapons/arccw_mifl/gso/usp/hkp2000_sliderelease.wav", 	t = 41/30},
        })
    else
        wep:DoLHIKAnimation("wet_akimbo", 65/30)
        wep:SetNextSecondaryFire(CurTime() + 65/30)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/gso/usp/hkp2000_clipout.wav", 	t = 8/30},
            {s = "weapons/arccw_mifl/gso/usp/hkp2000_clipin.wav", 	    t = 27/30},
        })
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "pistol") -- att.UBGL_Ammo

    wep:SetClip2(load)
end