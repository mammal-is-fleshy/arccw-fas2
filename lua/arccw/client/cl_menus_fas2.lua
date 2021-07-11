-- stole yo shit

hook.Add( "PopulateToolMenu", "ArcCW_FAS2_Options", function()
    spawnmenu.AddToolMenuOption( "Options", "ArcCW", "ArcCW_FAS2_Options", "FAS:2", "", "", ArcCW_FAS2_Options)
end )

local fas2cvars = {
    ["arccw_fas2_tri_clr_r"]         = { def = 255 },
    ["arccw_fas2_tri_clr_g"]         = { def = 255 },
    ["arccw_fas2_tri_clr_b"]         = { def = 255 },
}

for name, data in pairs(fas2cvars) do
    CreateClientConVar(name, data.def, true, data.usri or false, data.desc, data.min, data.max)
end

function ArcCW_FAS2_Options( CPanel )
    CPanel:AddControl("Header", {Description = "#arccw.clientcfg" })
	
    CPanel:AddControl("Slider", {Label = "Arm", Command = "cl_fas2pms_skin_hand", min = 1, max = 4, Type = "int" })
	CPanel:ControlHelp( "1 - White\n2 - Tan\n3 - Black\n4 - Camo" )
    CPanel:AddControl("Slider", {Label = "Glove", Command = "cl_fas2pms_skin_glove", min = 1, max = 4, Type = "int" })
	CPanel:ControlHelp( "1 - Nomex\n2 - Black\n3 - Desert Khaki\n4 - Multicam" )
    CPanel:AddControl("Slider", {Label = "Sleeve", Command = "cl_fas2pms_skin_sleeve", min = 1, max = 2, Type = "int" })
	
    CPanel:AddControl("color", { Label = "Tritium Color", Red = "arccw_fas2_tri_clr_r", Green = "arccw_fas2_tri_clr_g", Blue = "arccw_fas2_tri_clr_b" })
end
