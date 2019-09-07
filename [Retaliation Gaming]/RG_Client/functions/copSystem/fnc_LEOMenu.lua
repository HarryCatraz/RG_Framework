_menuPool = NativeUI.CreatePool()
LEOMenu = NativeUI.CreateMenu("LEO Menu", "Law Enforcement Menu", nil, nil, nil, nil, nil, 255, 255, 255, 255)
_menuPool:Add(LEOMenu)
_menuPool:MouseControlsEnabled(true)
_menuPool:ControlDisablingEnabled(true)

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
end

function Cop_Buttons(menu)
    local PanicButton = NativeUI.CreateItem("Panic Button", "Press Panic Button To Send Emergency Signal")
    menu:AddItem(newitem)
    menu.OnItemSelect = function(sender, item, newindex)
        if item == PanicButton then
            fnc_PanicButton()
        end
    end
end

Cop_Buttons(LEOMenu)

_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        _menuPool:ProcessMenus()
        if (Config.currentJob == "Cop") then
            if IsControlJustPressed(1, 51) then
                LEOMenu:Visible(not LEOMenu:Visible())
            end
        else
            RG_Alert("You are not a cop")
        end
    end
end)