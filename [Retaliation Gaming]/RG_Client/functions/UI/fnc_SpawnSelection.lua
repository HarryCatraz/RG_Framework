_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Spawn Menu", "~s~Select Your Spawn", "", "", "shopui_title_exec_vechupgrade", "shopui_title_exec_vechupgrade")
_menuPool:Add(mainMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    DrawNotification(false, false)
end

function AddSpawnMenu(menu)
	Grapeseed = NativeUI.CreateItem("Grapeseed", "")
    InternationalAirport = NativeUI.CreateItem("International Airport", "")
    PaletoBay = NativeUI.CreateItem("Paleto Bay", "")
    LosSantos = NativeUI.CreateItem("Los Santos", "")
    SandyShores = NativeUI.CreateItem("Sandy Shores", "")

    menu:AddItem(Grapeseed)
    menu:AddItem(InternationalAirport)
    menu:AddItem(PaletoBay)
    menu:AddItem(LosSantos)
    menu:AddItem(SandyShores)

    menu.OnItemSelect = function(sender, item, index)
        if item == Grapeseed then
            SetEntityCoords(GetPlayerPed(-1), 1697.0, 4833.0, 42, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        elseif item == InternationalAirport then
                SetEntityCoords(GetPlayerPed(-1), -1037.82, -2738.0, 13.8, 0, 0, 0, 0)
                mainMenu:Visible(not mainMenu:Visible())
        elseif item == PaletoBay then
            SetEntityCoords(GetPlayerPed(-1), -90.0, 6313.0, 31.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        elseif item == LosSantos then
            SetEntityCoords(GetPlayerPed(-1), -267.0, -960.0, 31.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        elseif item == SandyShores then
            SetEntityCoords(GetPlayerPed(-1), 1827.0, 3693.0, 34.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end   
end

AddSpawnMenu(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		_menuPool:ProcessMenus()
	end
end)

Citizen.CreateThread(function()
    local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
    while true do
        Citizen.Wait(0)
        local distance = Vdist(pedX, pedY, pedZ, 3153.9, 1281.33, 3.17)
        if distance <= 3.0 then
            RG_Notify("You are in the Debug Zone - Press ~b~E~w~ to open the spawn menu")
            if IsControlJustPressed(0, 38) then
                mainMenu:Visible(not mainMenu:Visible())
            end
        end
    end
end)