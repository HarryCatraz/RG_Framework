RegisterCommand("save", function(source, args)
    local argString = table.concat(args, " ")
    local playerName = GetPlayerName(source)
    --local playerPed = GetHashKey(GetEntityModel(GetPlayerPed(-1)))
    local playerPed = GetEntityModel(GetPlayerPed(-1))
    local playerID = GetPlayerIdentifiers(source)[1]
    MySQL.Async.fetchAll("INSERT INTO players (id, name, weapons, ped) VALUES (@source, @name, @weapons, @ped)",
    {["@source"] = playerID, ["@name"] = playerName, ["@weapons"] = "Weapons Not Saved", ["@ped"] = playerPed},
    function (result)
        TriggerClientEvent("output", source, "^2".. argString.. "^0")
    end)
end)

RegisterCommand("get", function(source, args) 
    local argString = table.concat(args, " ")
    local playerName = GetPlayerName(source)
    local playerPed = GetEntityModel(GetPlayerPed(-1))
    local playerID = GetPlayerIdentifiers(source)[1]
    MySQL.Async.fetchAll("SELECT * FROM players ORDER BY id DESC LIMIT 1", {},
    function(result)
        TriggerClientEvent("output", source, "^3("..result[1].name ..") - ^8".. result[1].id .."^0: " .. result[1].weapons .."^0: ".. result[1].ped)  
    end) 
end)