_menuPool = NativeUI.CreatePool()
LEOMenu = NativeUI.CreateMenu("Police Menu", "~s~Police Duty Tools", "", "", "shopui_title_exec_vechupgrade", "shopui_title_exec_vechupgrade")
_menuPool:Add(LEOMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

function AddLEOMenu(menu)
	PanicButton = NativeUI.CreateItem("Press Panic Button", "")

    menu:AddItem(PanicButton)

    menu.OnItemSelect = function(sender, item, index)
        if item == PanicButton then
            fnc_PanicButton()
            LEOMenu:Visible(not LEOMenu:Visible())
        end
    end   
end

AddLEOMenu(LEOMenu)
_menuPool:RefreshIndex()

function fnc_PanicButton()
    local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
    panic.blip = AddBlipForCoord(pedX, pedY, pedZ)
    SetBlipSprite(panic.blip, 103) --Target Blip
    SetBlipDisplay(panic.blip, 4)
    SetBlipScale(panic.blip, 0.9)
    SetBlipColour(panic.blip, 76) --Dark Red
    SetBlipAsShortRange(panic.blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("PANIC BUTTON")
    EndTextCommandSetBlipName(panic.blip)
    Wait(20000) --20 Seconds
    RemoveBlip(panic.blip)
    return
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        --if (Config.currentJob == "Cop") then
            if IsControlJustPressed(0, 38) then
                LEOMenu:Visible(not LEOMenu:Visible())
            end
        --else
            --RG_Notify("You are not a cop")
        --end
    end
end)