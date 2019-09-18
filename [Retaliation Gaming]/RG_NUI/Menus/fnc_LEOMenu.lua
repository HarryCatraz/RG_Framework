_menuPool = NativeUI.CreatePool()
LEOMenu = NativeUI.CreateMenu("Police Menu", "~s~Police Duty Tools", "", "", "shopui_title_exec_vechupgrade", "shopui_title_exec_vechupgrade")
_menuPool:Add(LEOMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

function AddLEOMenu(menu)
	PanicButton = NativeUI.CreateItem("Press Panic Button", "")
    EquipShield = NativeUI.CreateItem("Equip Riot Shield", "")

    menu:AddItem(PanicButton)

    menu.OnItemSelect = function(sender, item, index)
        if item == PanicButton then
            fnc_PanicButton()
            LEOMenu:Visible(not LEOMenu:Visible())
        end
        if item == EquipShield then
            if shieldActive then
                DisableShield()
            else
                EnableShield()
            end
            LEOMenu:Visible(not LEOMenu:Visible())
        end
    end   
end

AddLEOMenu(LEOMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        if Config.currentJob == "Cop" then
            if IsControlJustPressed(0, 38) then
                LEOMenu:Visible(not LEOMenu:Visible())
            end
        end
    end
end)