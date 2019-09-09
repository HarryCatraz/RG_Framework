_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Spawn Menu", "Select Your Spawn") -- Change to config vars
_menuPool:Add(mainMenu)

function Grapeseed(menu) 
    local click1 = NativeUI.CreateItem("Grapeseed", "~g~Spawn Grapeseed")
    menu:AddItem(click1)
    menu.OnItemSelect = function(sender,item1, index)
        if item1 == click1 then
            SetEntityCoords(GetPlayerPed(-1), 1697.0, 4833.0, 42, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end

function Grapeseed(menu) 
    local click2 = NativeUI.CreateItem("Grapeseed", "~g~Spawn Grapeseed")
    menu:AddItem(click2)
    menu.OnItemSelect = function(sender, item2, index)
        if item2 == click2 then
            SetEntityCoords(GetPlayerPed(-1), 1697.0, 4833.0, 42.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end

function InternationalAirport(menu) 
    local click3 = NativeUI.CreateItem("International Airport", "~g~Spawn LSIA")
    menu:AddItem(click3)
    menu.OnItemSelect = function(sender, item3, index)
        if item3 == click3 then
            SetEntityCoords(GetPlayerPed(-1), -1037.82, -2738.0, 13.8, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end

function PaletoBay(menu) 
    local click4 = NativeUI.CreateItem("Paleto Bay", "~g~Spawn Paleto Bay Motel")
    menu:AddItem(click4)
    menu.OnItemSelect = function(sender, item4, index)
        if item4 == click4 then
            SetEntityCoords(GetPlayerPed(-1), -90.0, 6313.0, 31.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end

function LosSantos(menu) 
    local click5 = NativeUI.CreateItem("Los Santos", "~g~Spawn Los Santos City Center")
    menu:AddItem(click5)
    menu.OnItemSelect = function(sender, item5, index)
        if item5 == click5 then
            SetEntityCoords(GetPlayerPed(-1), 1827.0, 3693.0, 34.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end

function SandyShores(menu) 
    local click6 = NativeUI.CreateItem("Sandy Shores", "~g~Spawn Sandy Shores")
    menu:AddItem(click6)
    menu.OnItemSelect = function(sender, item6, index)
        if item6 == click6 then
            SetEntityCoords(GetPlayerPed(-1), -267.0, -960.0, 31.0, 0, 0, 0, 0)
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end

Grapeseed(mainMenu)
InternationalAirport(mainMenu)
PaletoBay(mainMenu)
LosSantos(mainMenu)
SandyShores(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    local ped = GetPlayerPed(-1)
    local pedX, pedY, pedZ = table.unpack(GetEntityCoords(ped, true))
    local maxDistance = 15.0
    while true do
    Citizen.Wait(0)
    _menuPool:ProcessMenus()
    local distance = Vdist(pedX, pedY, pedZ, 3153.8312988281, 1281.2443847656, 3.423659324646)
        if distance <= maxDistance then
            SetNotificationTextEntry("STRING")
            AddTextComponentString(Config.OpenMenuPromptText)
            DrawNotification(true, false)
            if IsControlJustPressed(0, 38) then
                mainMenu:Visible(not mainMenu:Visible())
            end
        end
    end
end)