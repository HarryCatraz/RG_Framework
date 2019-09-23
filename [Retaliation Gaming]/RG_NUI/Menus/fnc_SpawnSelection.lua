_menuPool = NativeUI.CreatePool()
SpawnMenu = NativeUI.CreateMenu("Spawn Menu", "~s~Select Your Spawn", "", "", "shopui_title_exec_vechupgrade", "shopui_title_exec_vechupgrade")
_menuPool:Add(SpawnMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

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
            SpawnMenu:Visible(not SpawnMenu:Visible())
        elseif item == InternationalAirport then
                SetEntityCoords(GetPlayerPed(-1), -1037.82, -2738.0, 13.8, 0, 0, 0, 0)
                SpawnMenu:Visible(not SpawnMenu:Visible())
        elseif item == PaletoBay then
            SetEntityCoords(GetPlayerPed(-1), -90.0, 6313.0, 31.0, 0, 0, 0, 0)
            SpawnMenu:Visible(not SpawnMenu:Visible())
        elseif item == LosSantos then
            SetEntityCoords(GetPlayerPed(-1), -267.0, -960.0, 31.0, 0, 0, 0, 0)
            SpawnMenu:Visible(not SpawnMenu:Visible())
        elseif item == SandyShores then
            SetEntityCoords(GetPlayerPed(-1), 1827.0, 3693.0, 34.0, 0, 0, 0, 0)
            SpawnMenu:Visible(not SpawnMenu:Visible())
        end
    end   
end

AddSpawnMenu(SpawnMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		_menuPool:ProcessMenus()
	end
end)