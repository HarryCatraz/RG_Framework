AddEventHandler('RG_NUI:OpenMenu', function(menu)
    local passedMenu = menu
	if passedMenu == 'RG_Menu_Spawn' then
		SpawnMenu:Visible(not SpawnMenu:Visible())
	end
	if passedMenu == 'RG_Menu_LEO' then
		LEOMenu:Visible(not LEOMenu:Visible())
    end
	if passedMenu == 'RG_Menu_GunShop' then
		GunMenu:Visible(not GunMenu:Visible())
    end
    if passedMenu == 'RG_Menu_CopGarage' then
		CopGarageMenu:Visible(not CopGarageMenu:Visible())
	end
	if passedMenu == 'RG_Menu_CopWeapons' then
		-- Needs Changing
		CopWeaponsMenu:Visible(not CopWeaponsMenu:Visible())
	end
end)