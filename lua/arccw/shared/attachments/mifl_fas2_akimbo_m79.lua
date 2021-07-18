att.PrintName = "M79 Pirate Gun"
att.Icon = Material("entities/arccw_mifl_fas2_akimbo_m79.png", "smooth")
att.Description = "Sawn off M79 grenade launcher for one-hand use, loaded with HE rounds. A pirate accent is required when using this."
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
att.ModelOffset = Vector(-2, 0, 0)

att.GivesFlags = {"handlocked"}

att.ModelScale = Vector(1, 1, 1)

att.SortOrder = 700 + 250

att.AddSuffix = " + M79"

att.MountPositionOverride = 0
att.Override_NoHideLeftHandInCustomization = true

att.Model = "models/weapons/arccw/mifl_atts/fas2/c_m79.mdl"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_pistol"
att.UBGL_ClipSize = 7
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 600
att.UBGL_Recoil = 3 -- Should be like 8 in theory but UBGL recoil seems to be different?
att.UBGL_RecoilSide = 1.5
att.UBGL_RecoilRise = 1.2
att.UBGL_Capacity = 1

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


local function AmmoType(wep)
    return "smg1_grenade"
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount(AmmoType(wep))
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() < 1 then return end

    wep:FireRocket("arccw_gl_m79_he", 1500 * ArcCW.HUToM)
    wep:EmitSound("weapons/arccw_mifl/fas2/explosive_m79/m79_fire1.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
    wep:PlaySoundTable({
            {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_distance_fire1.wav", t = 0},
    })

    wep:SetClip2(0)

    wep:DoLHIKAnimation("fire", 25 / 60)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 1

    if wep:Clip2() >= clip then return end

    if Ammo(wep) + wep:Clip2() < clip then return end

    wep:DoLHIKAnimation("reload", 3.25)
    wep:SetNextSecondaryFire(CurTime() + 3.25)
    wep:PlaySoundTable({
        {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_open.wav", 	    t = 15/60},
        {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_remove.wav", 	t = 50/60},
        {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_insert.wav", 	t = 100/60},
        {s = "weapons/arccw_mifl/fas2/explosive_m79/m79_close.wav", 	t = 155/60},
    })

    local reserve = Ammo(wep)
    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)
    wep.Owner:SetAmmo(reserve - load, AmmoType(wep))

    wep:SetClip2(load)
end