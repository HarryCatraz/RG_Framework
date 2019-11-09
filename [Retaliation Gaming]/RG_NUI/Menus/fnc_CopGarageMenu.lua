_menuPool = NativeUI.CreatePool()
CopGarageMenu = NativeUI.CreateMenu("Police Vehicles", "~s~Purchase A Police Vehicle", "", "", "shopui_title_exec_vechupgrade", "shopui_title_exec_vechupgrade")
_menuPool:Add(CopGarageMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

function AddCopGarageMenu(menu)

    for _, info in pairs(Config.CopGarageVehicles) do
        CopGarageVehicleItems = NativeUI.CreateItem(Config.CopGarageVehicles.title, "")
        menu:AddItem(CopGarageVehicleItems)
    end

    menu.OnItemSelect = function(sender, item, index)
        TriggerEvent("RG_SpawnVehicle", Config.CopGarageVehicles.hash)
    end
end

AddCopGarageMenu(CopGarageMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		_menuPool:ProcessMenus()
	end
end)