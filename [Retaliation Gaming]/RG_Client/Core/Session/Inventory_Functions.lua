function sell(arg)
    local itemId = tonumber(arg[1])
    local price = arg[2]
    local item = ITEMS[itemId]
    item.quantity = item.quantity - 1
    NewItems[itemId] = item.quantity
    TriggerServerEvent("RG_Inventory:sell", itemId, item.quantity, price)
    InventoryMenu()
end

function delete(arg)
    local itemId = tonumber(arg[1])
    local qty = arg[2]
    local item = ITEMS[itemId]
    item.quantity = item.quantity - qty
    NewItems[itemId] = item.quantity
    InventoryMenu()
end

function add(arg)
    local itemId = tonumber(arg[1])
    local qty = arg[2]
    local item = ITEMS[itemId]
    item.quantity = item.quantity + qty
    NewItems[itemId] = item.quantity
    InventoryMenu()
end

function new(item, quantity)
    TriggerServerEvent("RG_Inventory:setItem", item, quantity)
    updateQuantities()
    TriggerServerEvent("RG_Inventory:getItems")
end

function give(item)
    local player = getNearPlayer()
    if player then
        local res = DisplayInput()
        if (ITEMS[item].quantity - res >= 0) then
            TriggerServerEvent("RG_Inventory:giveItem", item, ITEMS[item].label, res, GetPlayerServerId(player))
        end
    end
end

function updateQuantities()
    for item, quantity in pairs(NewItems) do
        TriggerServerEvent("RG_Inventory:updateQuantity", quantity, item)
    end
end

function PlayerIsDead()
    if playerdead then
        return
    end
    TriggerServerEvent("RG_Inventory:reset")
end

function use(val)
    local itemId = val[1]
    local canUse = val[2]
    if canUse ~= 0 then
        if canUse == 1 then
            drink(itemId)
        elseif canUse == 2 then
            eat(itemId)
        end
        TriggerEvent('RG_Inventory:looseItem', itemId, 1)
    else
        RG_Notify("done","Item Used!")
    end
end

function GiveMoney()
    local playerNear = getNearPlayer()
    if playerNear then
        DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
        while (UpdateOnscreenKeyboard() == 0) do
            DisableAllControlActions(0);
            Wait(0);
        end
        if (GetOnscreenKeyboardResult()) then
            local res = tonumber(GetOnscreenKeyboardResult())
            if res > 0 then
                TriggerServerEvent("RG_Inventory:swapMoney", res, GetPlayerServerId(playerNear))
            end
        end
    end
end

------------------------- USE SUBMETHODS --------------------------

function eat(item)
    local pid = PlayerPedId()
    RequestAnimDict("mp_player_inteat@burger")
    while (not HasAnimDictLoaded("mp_player_inteat@burger")) do Citizen.Wait(0) end
    TaskPlayAnim(pid, 'mp_player_inteat@burger', 'mp_player_int_eat_burger', 1.0, -1.0, 2000, 0, 1, true, true, true)
    TriggerEvent("RG_Inventory:consumeItem", "feed", 20)
end

function drink(item)
    local pid = PlayerPedId()
    RequestAnimDict("amb@world_human_drinking@coffee@male@idle_a")
    while (not HasAnimDictLoaded("amb@world_human_drinking@coffee@male@idle_a")) do Citizen.Wait(0) end
    TaskPlayAnim(pid, 'amb@world_human_drinking@coffee@male@idle_a', 'idle_a', 1.0, -1.0, 2000, 0, 1, true, true, true)
    TriggerEvent("RG_Inventory:consumeItem", "drink", 10)
end

------------------------- EXPORTS METHODS -------------------------

function getQuantity(itemId)
    return ITEMS[tonumber(itemId)].quantity
end

function getPods()
    local pods = 0
    for _, v in pairs(ITEMS) do
        pods = pods + v.quantity
    end
    return pods
end

function notFull()
    if (getPods() < maxCapacity) then return true end
end

------------------------- MENU -------------------------

function PersonnalMenu()
    ped = GetPlayerPed(-1);
    MenuTitle="Menu :"
    ClearMenu()
    Menu.addButton("Inventory", "InventoryMenu", nil)
    --Menu.addButton("Animations", "animsMenu", nil)
    --Menu.addButton("Donner argent", "GiveMoney", nil)
end

function InventoryMenu()
    ped = GetPlayerPed(-1);
    MenuTitle="Items: " .. (getPods() or 0) .. "/" .. maxCapacity
    ClearMenu()
    for ind, value in pairs(ITEMS) do
        if (value.quantity > 0) then
            Menu.addButton(tostring(value.label) .. " : " .. tostring(value.quantity), "ItemMenu", {ind,value.canUse})
        end
    end
end

function ItemMenu(val)
    local itemId = val[1]
    local canUse = val[2]
    ClearMenu()
    MenuTitle="Details :"
    Menu.addButton("Give Item", "give", itemId)
    Menu.addButton("Use Item", "use", {itemId, canUse})
    Menu.addButton("Put In Vehicle", "PutInCoffre", itemId)
end

function PutInCoffre(itemId)
    local vehFront = VehicleInFront()
    if vehFront then
        local qty = DisplayInput()
        if (getQuantity(itemId) - qty >= 0) then
            TriggerServerEvent("RG_Inventory:receiveItem", vehFront, itemId, ITEMS[itemId].label, qty)
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 167) then
            TriggerServerEvent("RG_Inventory:getItems")
        end

        if IsControlJustPressed(1, 311) then
            Menu.addButton("Inventory", "InventoryMenu", nil)
            Menu.hidden = not Menu.hidden -- Hide/Show the menu
        end

        Menu.renderGUI() -- Draw menu on each tick if Menu.hidden = false

        if IsEntityDead(PlayerPedId()) then
            PlayerIsDead()
            -- prevent the death check from overloading the server
            playerdead = true
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(refreshTime)
        if NewItems then
            updateQuantities()
        end
        NewItems = {}
    end
end)

------------------------- GENERAL METHODS -------------------------

function getPlayers()
    local playerList = {}
    for i = 0, 32 do
        local player = GetPlayerFromServerId(i)
        if NetworkIsPlayerActive(player) then
            table.insert(playerList, player)
        end
    end
    return playerList
end

function getNearPlayer()
    local players = getPlayers()
    local pos = GetEntityCoords(GetPlayerPed(-1))
    local pos2
    local distance
    local minDistance = 3
    local playerNear
    for _, player in pairs(players) do
        pos2 = GetEntityCoords(GetPlayerPed(player))
        distance = GetDistanceBetweenCoords(pos["x"], pos["y"], pos["z"], pos2["x"], pos2["y"], pos2["z"], true)
        if (pos ~= pos2 and distance < minDistance) then
            playerNear = player
            minDistance = distance
        end
    end
    if (minDistance < 3) then
        return playerNear
    end
end

function VehicleInFront()
    local pos = GetEntityCoords(GetPlayerPed(-1))
    local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 3.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, GetPlayerPed(-1), 0)
    local a, b, c, d, result = GetRaycastResult(rayHandle)
    return GetVehicleNumberPlateText(result)
end

function DisplayInput()
    DisplayOnscreenKeyboard(1, "FMMC_MPM_TYP8", "", "", "", "", "", 30)
    while UpdateOnscreenKeyboard() == 0 do
        DisableAllControlActions(0)
        Wait(1)
    end

    if (GetOnscreenKeyboardResult()) then
        return tonumber(GetOnscreenKeyboardResult())
    end
end