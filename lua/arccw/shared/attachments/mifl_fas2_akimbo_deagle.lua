att.PrintName = "Deagle"
att.Icon = Material("entities/arccw_mifl_fas2_akimbo_deagle.png", "smooth")
att.Description = "Become the American Action Hero."
att.Hidden = false
att.Desc_Pros = {
    "pro.fas2.akimbo",
}
att.Desc_Cons = {
    "con.fas2.akimbo"
}
att.AutoStats = true
att.Mult_HipDispersion = 2
att.Slot = "mifl_fas2_akimbo"
att.NotForNPCs = true
att.ModelOffset = Vector(1, -0.5, 0)

att.GivesFlags = {"handlocked"}

att.ModelScale = Vector(1, 1, 1)

att.SortOrder = 700 + 70

att.AddSuffix = " + Deagle"

att.MountPositionOverride = 0
att.Override_NoHideLeftHandInCustomization = true

att.Model = "models/weapons/arccw/mifl_atts/fas2/c_deagle.mdl"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_pistol"
att.UBGL_ClipSize = 7
att.UBGL_Ammo = "357"
att.UBGL_RPM = 300
att.UBGL_Recoil = 1.5
att.UBGL_RecoilSide = 0.8
att.UBGL_RecoilRise = 1.2
att.UBGL_Capacity = 7

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.Hook_Think = function(wep)
    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
        --wep:Reload()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(false)
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
    return wep.Owner:GetAmmoCount("357") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 170 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 1,
		Damage = 70,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 70
			local dmgmin = 35

			local delta = dist / 40

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/arccw_mifl/fas2/deserteagle/de_fire1.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)
    wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/deserteagle/de_distance_fire1.wav",			t = 0},
	})													
    wep:SetClip2(wep:Clip2() - 1)
    
    if wep:Clip2() > 0 then
        wep:DoLHIKAnimation("fire", 25/60)
    else
        wep:DoLHIKAnimation("last", 25/60)
    end

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 7 + 1

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if Ammo(wep) <= 0 then return end

    if wep:Clip2() <= 0 then
        wep:DoLHIKAnimation("dry", 155/60)
        wep:SetNextSecondaryFire(CurTime() + 155/60)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/deserteagle/de_magout_empty.wav", 	t = 10/60},
            {s = "weapons/arccw_mifl/fas2/deserteagle/de_magin.wav", 	    t = 62/60},
            {s = "weapons/arccw_mifl/fas2/1911/1911_sliderelease.wav", 	t = 108/60},
        })
    else
        wep:DoLHIKAnimation("wet", 120/60)
        wep:SetNextSecondaryFire(CurTime() + 120/60)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/deserteagle/de_magout_empty.wav", 	t = 10/60},
            {s = "weapons/arccw_mifl/fas2/deserteagle/de_magin.wav", 	    t = 62/60},
        })
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "357") -- att.UBGL_Ammo

    wep:SetClip2(load)
end