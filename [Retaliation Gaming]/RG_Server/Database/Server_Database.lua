-- https://i.imgur.com/sTqa0r7.png

RegisterCommand("save", function(source, args)
    local argString = table.concat(args, " ")
    local user = {ID = GetPlayerIdentifiers(source)[1], name = GetPlayerName(source), args = argString}
    MySQL.Async.fetchAll('SELECT * FROM players WHERE `id`=@source;', {["@source"] = PlayerID}, function(players)
		if players[1] then
            MySQL.Async.fetchAll("UPDATE players SET `id`=@source, `name`=@name, `args`=@args WHERE `id`=@source", {["@source"] = user.ID, ["@name"] = user.name, ["@args"] = user.args}, function(done)
            end)
        else
            MySQL.Async.fetchAll('INSERT INTO players (id, name, args) VALUES(@source, @name, @args)', {["@source"] = user.ID, ["@name"] = user.name, ["@args"] = user.args}, function(e)
            end)
        end
	end)
end)

RegisterCommand("get", function(source, args) 
    local PlayerID = GetPlayerIdentifiers(source)[1]
    local PlayerName = GetPlayerName(source)
    MySQL.Async.fetchAll('SELECT * FROM players WHERE `id`=@source;', {["@source"] = PlayerID}, function(players)
		if players[1] then
			TriggerClientEvent("CLT_GetRequest", players[1].id, players[1].name, players[1].args)
        end
	end)
end)