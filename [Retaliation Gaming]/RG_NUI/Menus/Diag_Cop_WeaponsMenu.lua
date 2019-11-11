_menuPool = NativeUI.CreatePool()
CopWeaponsMenu = NativeUI.CreateMenu("Police Weapon Locker", "~s~Purchase Police Equipment")
_menuPool:Add(CopWeaponsMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

function AddCopWeaponsMenu(menu)

    for _, info in pairs(Config.CopWeapons) do
        CopWeaponsItems = NativeUI.CreateItem(Config.CopWeapons.title, "")
        menu:AddItem(CopWeaponsItems)
    end

    menu.OnItemSelect = function(sender, item, index)
        TriggerEvent("RG_GiveWeapon", Config.CopWeapons.hash)
    end
end

AddCopWeaponsMenu(CopWeaponsMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		_menuPool:ProcessMenus()
	end
end)