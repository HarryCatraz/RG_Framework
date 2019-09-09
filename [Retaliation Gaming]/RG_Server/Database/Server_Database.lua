-- https://i.imgur.com/sTqa0r7.png

RegisterServerEvent('RG_DB_SyncRequest')
AddEventHandler("RG_DB_SyncRequest", function(id, name, money, bank, hunger, thirst, pissrelif, shitrelif, currentjob)
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)
    
    if (_id) then
        MySQL.Async.fetchAll("SELECT * FROM `players` WHERE `id` = @steam", {['@steam'] = _id}, function(res)
            if res[1] ~= nil then 
                MySQL.Async.fetchAll("UPDATE players SET `id`=@steam, `name`=@name, `money`=@money, `bank`=@bank, `hunger`=@hunger, `thirst`=@thirst, `pissrelif`=@pissrelif, `shitrelif`=@shitrelif, `currentjob`=@currentjob  WHERE `id`=@steam", 
                {["@steam"] = _id, ["@name"] = _name, ["@money"] = money, ["@bank"] = bank, ["@hunger"] = hunger, ["@thirst"] = thirst, ["@pissrelif"] = pissrelif, ["@shitrelif"] = shitrelif, ["@currentjob"] = currentjob}, 
                function(return1)
                end)
            else
                MySQL.Async.fetchAll('INSERT INTO players (id, name, money, bank, hunger, thirst, pissrelif, shitrelif, currentjob) VALUES(@steam, @name, @money, @bank, @hunger, @thirst, @pissrelif, @shitrelif, @currentjob)', 
                {["@steam"] = _id, ["@name"] = _name, ["@money"] = money, ["@bank"] = bank, ["@hunger"] = hunger, ["@thirst"] = thirst, ["@pissrelif"] = pissrelif, ["@shitrelif"] = shitrelif, ["@currentjob"] = currentjob}, 
                function(return2)
                end)
            end
        end)
    else
        DropPlayer(_src, "Your SteamID has not been located or maybe your steam client is not open, please try reconnecting")
    end
end)

RegisterServerEvent('RG_DB_SelectRequest')
AddEventHandler("RG_DB_SelectRequest", function()
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)

    if (_id) then
        MySQL.Async.fetchAll("SELECT * FROM `players` WHERE `id` = @steam", {['@steam'] = _id}, function(res)
            TriggerClientEvent("RG_Client_SelectRequest", _src, res[1].id, res[1].name, res[1].money, res[1].bank, res[1].hunger, res[1].thirst, res[1].pissrelif, res[1].shitrelif, res[1].currentjob)
        end)
    else
        DropPlayer(_src, "Your SteamID has not been located or maybe your steam client is not open, please try reconnecting")
    end
end)