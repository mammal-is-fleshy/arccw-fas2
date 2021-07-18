att.PrintName = "MP5K"
att.Icon = Material("entities/arccw_mifl_fas2_akimbo_mp5k.png", "smooth")
att.Description = "Oh, aren't you a big fella? Straight out of Hollywood."
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

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = true
att.UBGL_MuzzleEffect = "muzzleflash_mp5"
att.UBGL_ClipSize = 30
att.UBGL_Ammo = "pistol"
att.UBGL_RPM = 900
att.UBGL_Recoil = 1.5939*0.65
att.UBGL_RecoilSide = 0.1035*0.5
att.UBGL_RecoilRise = 0.92
att.UBGL_Capacity = 30
att.Mult_MoveDispersion = 0.8625*0.75

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
    --[[elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()]]
    end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("pistol") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 110 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 1,
		Damage = 21,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 21
			local dmgmin = 12

			local delta = dist / 40

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/arccw_mifl/fas2/mp5/mp5_fire1.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)
    wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_distance_fire1.wav",			t = 0},
	})													
    wep:SetClip2(wep:Clip2() - 1)
    
    if wep:Clip2() > 0 then
        wep:DoLHIKAnimation("fire", 30/60)
    end

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 30 + 1

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if Ammo(wep) <= 0 then return end

    if wep:Clip2() <= 0 then
        wep:DoLHIKAnimation("dry", 150/60)
        wep:SetNextSecondaryFire(CurTime() + 150/60)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magout_empty.wav", 	t = 11/60},
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magin.wav", 	    	t = 65/60},
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_boltpull.wav", 	t = 85/60},		
        })
    else
        wep:DoLHIKAnimation("wet", 130/60)
        wep:SetNextSecondaryFire(CurTime() + 130/60)
        wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magout_empty.wav", 	t = 11/60},
            {s = "weapons/arccw_mifl/fas2/mp5/mp5_magin.wav", 	    	t = 65/60},
        })
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "pistol") -- att.UBGL_Ammo

    wep:SetClip2(load)
end