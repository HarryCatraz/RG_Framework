function OnPlayerConnecting()
    local playerID = GetPlayerIdentifiers(source)[1]
    MySQL.Async.fetchAll("SELECT id FROM players WHERE id=@playerID",
    {["@playerID"] = playerID},
    function(result)
        local id = result[1].id
        if (id == playerID) then
            TriggerServerEvent("DB_player_Load")
        else
            TriggerServerEvent("DB_player_Insert")
        end
    end)
end

RegisterServerEvent('DB_player_Insert')
AddEventHandler('DB_player_Insert',function()
    local playerID = GetPlayerIdentifiers(source)[1]
    MySQL.Async.fetchAll("INSERT INTO players (id) VALUES (@source)",
    {["@source"] = playerID},
    function(result)
        TriggerClientEvent("chatMessage", -1, "Inserting New Row Into DB")  
    end)
end)

RegisterServerEvent('DB_player_Load')
AddEventHandler('DB_player_Load',function()
    local playerID = GetPlayerIdentifiers(source)[1]
    MySQL.Async.fetchAll("SELECT * FROM players WHERE id=@source LIMIT 1", {["@source"] = playerID},
    function (result)

        local id = result[1].id
        local name = result[1].name
        local weapons = result[1].weapons
        local ped = result[1].ped
        local coplevel = result[1].coplevel
        local emslevel = result[1].emslevel
        local cash = result[1].cash
        local bank = result[1].bank
        local hunger = result[1].hunger
        local thirst = result[1].thirst
        local relif = result[1].relif

        TriggerClientEvent("Client_DB_player_Load", weapons, ped, coplevel, emslevel, cash, bank, hunger, thirst, relif)
    end)
end)

RegisterServerEvent('DB_player_Update')
AddEventHandler('DB_player_Update',function(weapons, ped, coplevel, emslevel, cash, bank, hunger, thirst, relif)
    local playerID = GetPlayerIdentifiers(source)[1]
    local playerName = GetPlayerName(source)
    MySQL.Async.fetchAll("UPDATE INTO players (id, name, weapons, ped, coplevel, emslevel, cash, bank) VALUES (@source, @name, @weapons, @ped, @coplevel, @emslevel, @cash, @bank) WHERE id=@source",
    {["@source"] = playerID, ["@name"] = playerName, ["@weapons"] = weapons, ["@ped"] = ped, ["@coplevel"] = coplevel, ["@ems"] = emslevel, ["@cash"] = cash, ["@bank"] = bank},
    function(result)
        TriggerClientEvent("chatMessage", -1, "Syncing Data")  
    end)
end)