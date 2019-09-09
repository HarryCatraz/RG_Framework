-- https://i.imgur.com/sTqa0r7.png

RegisterServerEvent('SVR_doesPlayerInfoExist')
AddEventHandler('SVR_doesPlayerInfoExist',function()
    MySQL.Async.fetchAll('SELECT * FROM players WHERE `id`=@source;', {["@source"] = GetPlayerIdentifiers(source)[1]}, function(players)
		if players[1] then
			TriggerClientEvent("CLT_GetRequest", result[1].id, result[1].name, result[1].args)
        else
            print("Could not get DB info for " ..GetPlayerIdentifiers(source)[1])
        end
	end)
end)

RegisterServerEvent('SVR_getPlayersInfo')
AddEventHandler('SVR_getPlayersInfo',function()
    MySQL.Async.fetchAll('SELECT * FROM players WHERE `id`=@source;', {["@source"] = GetPlayerIdentifiers(source)[1]}, function(players)
		if players[1] then
			TriggerClientEvent("CLT_GetRequest", result[1].id, result[1].name, result[1].args)
        else
            print("Could not get DB info for " ..GetPlayerIdentifiers(source)[1])
        end
	end)
end)

RegisterServerEvent('SVR_createPlayersInfo')
AddEventHandler('SVR_createPlayersInfo',function(args)
	local user = {args = args}

	MySQL.Async.execute('INSERT INTO users (`id`, `name`, `args`) VALUES (@source, @name, @args);', {source = GetPlayerIdentifiers(source)[1], name = GetPlayerName(source), args = user.args}, function(e)
		print("Info for user: " ..GetPlayerIdentifiers(source)[1].. "was inserted in to the database")
	end)
end)

RegisterServerEvent('SVR_updatePlayersInfo')
AddEventHandler('SVR_updatePlayersInfo',function(args)
    local user = {args = args}
    
    MySQL.Async.execute("UPDATE players SET `id`=@source, `name`=@name, `args`=@args WHERE `id`=@source", {["@source"] = GetPlayerIdentifiers(source)[1], ["@name"] = GetPlayerName(source), ["@args"] = argString}, function(done)
        -- body
    end)
end)