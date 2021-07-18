att.PrintName = "G18"
att.Icon = Material("entities/arccw_mifl_fas2_akimbo_g18.png", "smooth")
att.Description = "Incase 1000 RPM isn't enough."
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

att.SortOrder = 700 + 30*0.85

att.AddSuffix = " + G18"

att.MountPositionOverride = 0
att.Override_NoHideLeftHandInCustomization = true

att.Model = "models/weapons/arccw/mifl_atts/fas2/c_g20.mdl"
att.ModelBodygroups = "011"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = true
att.UBGL_MuzzleEffect = "muzzleflash_pistol"
att.UBGL_ClipSize = 33
att.UBGL_Ammo = "pistol"
att.UBGL_RPM = 1035
att.UBGL_Recoil = .65
att.UBGL_RecoilSide = .45
att.UBGL_RecoilRise = .8
att.UBGL_Capacity = 33

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
	elseif wep:GetOwner():KeyDown(IN_ATTACK2) then -- Wake me up when Arctic picks up an interest in akimbo (I will die of oversleep!)
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
		Damage = 30*0.85,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 30*0.85
			local dmgmin = 24*0.85

			local delta = dist / 35

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/arccw_mifl/fas2/glock20/glock20_fire1.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)
    wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/glock20/glock20_distance_fire1.wav",			t = 0},
	})													
    wep:SetClip2(wep:Clip2() - 1)
    
    if wep:Clip2() > 0 then
        wep:DoLHIKAnimation("fire", 12/60)
    else
        wep:DoLHIKAnimation("last", 12/60)
    end

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 33 + 1

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if Ammo(wep) <= 0 then return end

    if wep:Clip2() <= 0 then
        wep:DoLHIKAnimation("dry", (127/60)*1.15)
        wep:SetNextSecondaryFire(CurTime() + (127/60)*1.15)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/glock20/glock20_magout_empty.wav", 	t = (10/60)*1.15},
            {s = "weapons/arccw_mifl/fas2/glock20/glock20_magin.wav", 	    t = (55/60)*1.15},
            {s = "weapons/arccw_mifl/fas2/glock20/glock20_sliderelease.wav", 	t = (60/60)*1.15},
        })
    else
        wep:DoLHIKAnimation("wet", (105/60)*1.15)
        wep:SetNextSecondaryFire(CurTime() + (105/60)*1.15)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/glock20/glock20_magout_empty.wav", 	t = (12/60)*1.15},
            {s = "weapons/arccw_mifl/fas2/glock20/glock20_magin.wav", 	    t = (55/60)*1.15},
        })
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "pistol") -- att.UBGL_Ammo

    wep:SetClip2(load)
end