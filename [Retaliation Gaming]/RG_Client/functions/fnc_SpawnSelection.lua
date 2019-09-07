_menuPool = NativeUI.CreatePool()
SpawnMenu = NativeUI.CreateMenu("Spawn Menu", "Select Your Spawn", nil, nil, nil, nil, nil, 255, 255, 255, 255)
_menuPool:Add(SpawnMenu)
_menuPool:MouseControlsEnabled(true)
_menuPool:ControlDisablingEnabled(true)

function Spawn_Buttons(menu)
    local ped = GetPlayerPed(-1)
    local GSclick = NativeUI.CreateItem("Grapeseed", "Spawn Grapeseed")
    local IAclick = NativeUI.CreateItem("International Airport", "~g~Spawn Los Santos International Airport")
    local PBclick = NativeUI.CreateItem("Paleto Bay", "~g~Spawn Paleto Bay Motel")
    local LSclick = NativeUI.CreateItem("Los Santos", "~g~Spawn Los Santos City Center")
    local SSclick = NativeUI.CreateItem("Sandy Shores", "~g~Spawn Sandy Shores")
    menu:AddItem(newitem)
    menu.OnItemSelect = function(sender, item, newindex)
        if item == GSclick then
            SetEntityCoords(ped, 1687.0, 4833.0, 42.0, 1, 0, 0, 1)
        end
        if item == IAclick then
            SetEntityCoords(ped, -1037.82, -2738.0, 13.8, 1, 0, 0, 1)
        end
        if item == PBclick then
            SetEntityCoords(ped, -90.0, 6313.0, 31.0, 1, 0, 0, 1)
        end
        if item == LSclick then
            SetEntityCoords(ped, 1827.0, 3693.0, 34.0, 1, 0, 0, 1)
        end
        if item == SSclick then
            SetEntityCoords(ped, -267.0, -960.0, 31.0, 1, 0, 0, 1)
        end
    end
end

Spawn_Buttons(SpawnMenu)

_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    local ped = GetPlayerPed(-1)
    local pedX, pedY, pedZ = table.unpack(GetEntityCoords(ped, true))
    local maxDistance = 15.0
    while true do
    Citizen.Wait(1)
    _menuPool:ProcessMenus()
    local distance = Vdist(pedX, pedY, pedZ, 3153.8312988281, 1281.2443847656, 3.423659324646)
        if distance <= maxDistance then
            SetNotificationTextEntry("STRING")
            AddTextComponentString("<b>Press E To Open The Spawn Selection Menu</b>")
            DrawNotification(true, false)
            if IsControlJustPressed(1, 38) then
                SpawnMenu:Visible(not SpawnMenu:Visible())
            end
        end
    end
end)