RegisterServerEvent("RG_Inventory:getItems")
RegisterServerEvent("RG_Inventory:updateQuantity")
RegisterServerEvent("RG_Inventory:setItem")
RegisterServerEvent("RG_Inventory:reset")
RegisterServerEvent("RG_Inventory:sell")
RegisterServerEvent("RG_Inventory:giveItem")
RegisterServerEvent("RG_Inventory:swapMoney")

local items = {}

AddEventHandler("RG_Inventory:getItems", function()
    items = {}
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
        MySQL.Async.fetchAll("SELECT * FROM player_inventory JOIN items ON `player_inventory`.`item_id` = `items`.`id` WHERE id = @player_id",
        {['@player_id'] = _id },
        function(qItems)
            if (qItems) then
                for _, item in ipairs(qItems) do
                    t = { ["quantity"] = item.quantity, ["label"] = item.label, ["canUse"] = item.canUse }
                    table.insert(items, tonumber(item.item_id), t)
                end
            end
            TriggerClientEvent("RG_Inventory:getItems", source, items)
        end)
end)

AddEventHandler("RG_Inventory:setItem", function(item, quantity)
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    --MySQL.Async.execute("INSERT INTO player_inventory (`id`, `item_id`, `quantity`) VALUES (@player, @item, @qty)",
    MySQL.Async.fetchAll("INSERT INTO player_inventory (`id`, `item_id`, `quantity`) VALUES (@player_id, @item, @qty)",
        {['@player_id'] = _id, ['@item'] = item, ['@qty'] = quantity },
        function(rowsChanged)
            print(rowsChanged)
        end)
end)

AddEventHandler("RG_Inventory:updateQuantity", function(qty, id)
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    --MySQL.Async.execute("UPDATE player_inventory SET `quantity` = @qty WHERE `id` = @username AND `item_id` = @id",
    MySQL.Async.fetchAll("UPDATE player_inventory SET `quantity` = @qty WHERE `id` = @player_id AND `item_id` = @id",
        { ['@player_id'] = _id, ['@qty'] = tonumber(qty), ['@id'] = tonumber(id) },
        function(one)
            print(one)
        end)
end)

AddEventHandler("RG_Inventory:reset", function()
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    --MySQL.Async.execute("UPDATE player_inventory SET `quantity` = @qty WHERE `id` = @username", { ['@username'] = _name, ['@qty'] = 0 },
    MySQL.Async.fetchAll("UPDATE player_inventory SET `quantity` = @qty WHERE `id` = @player_id", 
        { ['@player_id'] = _id, ['@qty'] = 0 },
        function(two)
            print(two)
        end)
end)

AddEventHandler("RG_Inventory:sell", function(id, qty, price)
    -- Execute Client Event Adding Money Here
end)

AddEventHandler("RG_Inventory:giveItem", function(item, name, qty, target)
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    MySQL.Async.fetchAll("SELECT SUM(quantity) as total FROM player_inventory WHERE id = '@player_id'",  
    { ['@player_id'] = _id },
        function(total)
            if (total + qty <= 64) then
                TriggerClientEvent("RG_Inventory:looseItem", source, item, qty)
                TriggerClientEvent("RG_Inventory:receiveItem", target, item, qty)
            end
        end)  
end)

AddEventHandler("RG_Inventory:swapMoney", function(amount, target)
    -- Execute Client Event Adding Money Here
end)