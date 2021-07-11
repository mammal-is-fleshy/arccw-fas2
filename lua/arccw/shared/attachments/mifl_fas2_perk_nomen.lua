att.PrintName = "Proficiency"
att.Icon = Material("entities/acwatt_fas2_generic.png", "smooth")
att.Description = "Improves reloading speed and weapon handling."
att.Desc_Pros = {
	"Faster reloads"
}
att.Desc_Cons = {
}
att.Slot = "perk_fas2"

att.InvAtt = {"perk_fastreload", "go_perk_fastreload"}

att.Mult_DrawTime = 0.8
att.Mult_SightTime = 0.95

att.Hook_SelectReloadAnimation = function(wep, anim)
	local thething = wep.Animations["reload_nomen"] and "_nomen" or ""
	local empty = wep:Clip1() == 0 and "_empty" or ""

	return "reload" .. thething .. empty
end

att.AutoStats = true
