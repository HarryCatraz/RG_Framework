RegisterNetEvent("RG_NUI:OpenMenu")
AddEventHandler("RG_NUI:OpenMenu", function(menu)
    local passedMenu = menu
	if passedMenu == 'Diag_Civ_SpawnSelection' then
		SpawnMenu:Visible(not SpawnMenu:Visible())
	end
	if passedMenu == 'Diag_Cop_Interaction' then
		LEOMenu:Visible(not LEOMenu:Visible())
    end
	if passedMenu == 'Diag_Civ_WeaponsMenu' then
		GunMenu:Visible(not GunMenu:Visible())
    end
    if passedMenu == 'Diag_Cop_GarageMenu' then
		CopGarageMenu:Visible(not CopGarageMenu:Visible())
	end
	if passedMenu == 'Diag_Cop_WeaponsMenu' then
		CopWeaponsMenu:Visible(not CopWeaponsMenu:Visible())
	end
end)