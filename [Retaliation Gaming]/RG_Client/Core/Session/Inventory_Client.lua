ITEMS = {}
NewItems = {}
playerdead = false
maxCapacity = 64
refreshTime = 60000

-- register events, only needs to be done once
RegisterNetEvent("RG_Inventory:reset")
RegisterNetEvent("RG_Inventory:getItems")
RegisterNetEvent("RG_Inventory:updateQuantity")
RegisterNetEvent("RG_Inventory:setItem")
RegisterNetEvent("RG_Inventory:sell")
RegisterNetEvent("RG_Inventory:getItems")
RegisterNetEvent("RG_Inventory:receiveItem")
RegisterNetEvent("RG_Inventory:looseItem")
RegisterNetEvent("RG_Inventory:sellItem")

AddEventHandler("playerSpawned", function()
    TriggerServerEvent("RG_Inventory:getItems")
    -- reset player dead flag
    playerdead = false
end)

AddEventHandler("playerDropped", function()
    updateQuantities()
end)

AddEventHandler("RG_Inventory:getItems", function(THEITEMS)
    ITEMS = {}
    ITEMS = THEITEMS
end)

AddEventHandler("RG_Inventory:receiveItem", function(item, quantity)
    if (getPods() + quantity <= maxCapacity) then
        item = tonumber(item)
        if (ITEMS[item] == nil) then
            new(item, quantity)
        else
            add({ item, quantity })
        end
    end
end)

AddEventHandler("RG_Inventory:looseItem", function(item, quantity)
    item = tonumber(item)
    if (ITEMS[item].quantity >= quantity) then
        delete({ item, quantity })
    end
end)

AddEventHandler("RG_Inventory:sellItem", function(item, price)
    item = tonumber(item)
    if (ITEMS[item].quantity > 0) then
        sell({ item, price })
    end
end)