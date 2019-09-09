-- https://i.imgur.com/sTqa0r7.png

RegisterCommand("sync", function(source, args) 
    TriggerEvent("SVR_doesPlayerInfoExist", source)
end)

RegisterCommand("get", function(source) 
    TriggerEvent("SVR_getPlayersInfo", source)
end)

RegisterServerEvent('SVR_doesPlayerInfoExist')
AddEventHandler('SVR_doesPlayerInfoExist',function(source)
    local PlayerID = GetPlayerIdentifiers(source)[1]
    local PlayerName = GetPlayerName(source)
    MySQL.Async.fetchAll('SELECT * FROM players WHERE `id`=@source;', {["@source"] = PlayerID}, function(players)
		if players[1] then
			TriggerEvent("SVR_getPlayersInfo")
        else
            TriggerEvent("SVR_createPlayersInfo")
        end
	end)
end)

RegisterServerEvent('SVR_getPlayersInfo')
AddEventHandler('SVR_getPlayersInfo',function(source)
    local PlayerID = GetPlayerIdentifiers(source)[1]
    local PlayerName = GetPlayerName(source)
    MySQL.Async.fetchAll('SELECT * FROM players WHERE `id`=@source;', {["@source"] = PlayerID}, function(players)
		if players[1] then
			TriggerClientEvent("CLT_GetRequest", result[1].id, result[1].name, result[1].args)
        end
	end)
end)

RegisterServerEvent('SVR_createPlayersInfo')
AddEventHandler('SVR_createPlayersInfo',function(source)
    local user = {ID = GetPlayerIdentifiers(source)[1], name = GetPlayerName(source), args = "none"}
	MySQL.Async.execute('INSERT INTO players (id, name, args) VALUES(@source, @name, @args)', {["@source"] = user.ID, ["@name"] = user.name, ["@args"] = user.args}, function(e)
        TriggerEvent("SVR_updatePlayersInfo", user.args)
	end)
end)

RegisterServerEvent('SVR_updatePlayersInfo')
AddEventHandler('SVR_updatePlayersInfo',function(source, args)
    local user = {args = args}
    local PlayerID = GetPlayerIdentifiers(source)[1]
    local PlayerName = GetPlayerName(source)    
    MySQL.Async.execute("UPDATE players SET `id`=@source, `name`=@name, `args`=@args WHERE `id`=@source", {["@source"] = PlayerID, ["@name"] = PlayerName, ["@args"] = argString}, function(done)
        -- body
    end)
end)