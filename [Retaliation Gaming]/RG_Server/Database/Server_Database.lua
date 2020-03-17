RegisterServerEvent('RG_DB_SelectRequest')
AddEventHandler("RG_DB_SelectRequest", function()
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)

    if (_id) then
        MySQL.Async.fetchAll("SELECT * FROM `players` WHERE `id` = @steam", {['@steam'] = _id}, function(res)
            TriggerClientEvent("RG_Client_SelectRequest", _src, res[1].id, res[1].name, res[1].money, res[1].bank, res[1].hunger, res[1].thirst, res[1].pissrelif, res[1].shitrelif, res[1].currentjob, res[1].copWhitelisting, res[1].medicWhitelisting, res[1].staffWhitelisting)
        end)
    end
end)

RegisterServerEvent('RG_DB_SyncFull')
AddEventHandler("RG_DB_", function(id, name, money, bank, hunger, thirst, pissrelif, shitrelif, currentjob, copWhitelisting, medicWhitelisting, staffWhitelisting)
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)
    
    if (_id) then
        MySQL.Async.fetchAll("SELECT * FROM `players` WHERE `id` = @steam", {['@steam'] = _id}, function(res)
            if res[1] ~= nil then 
                MySQL.Async.fetchAll("UPDATE players SET `id`=@steam, `name`=@name, `money`=@money, `bank`=@bank, `hunger`=@hunger, `thirst`=@thirst, `pissrelif`=@pissrelif, `shitrelif`=@shitrelif, `currentjob`=@currentjob, `copWhitelisting`=@copWhitelisting, `medicWhitelisting`=@medicWhitelisting, `staffWhitelisting`=@staffWhitelisting  WHERE `id`=@steam", 
                {["@steam"] = _id, ["@name"] = _name, ["@money"] = money, ["@bank"] = bank, ["@hunger"] = hunger, ["@thirst"] = thirst, ["@pissrelif"] = pissrelif, ["@shitrelif"] = shitrelif, ["@currentjob"] = currentjob, ["copWhitelisting"] = copWhitelisting, ["medicWhitelisting"] = medicWhitelisting, ["staffWhitelisting"] = staffWhitelisting}, 
                function(return1)
                end)
            else
                MySQL.Async.fetchAll('INSERT INTO players (id, name, money, bank, hunger, thirst, pissrelif, shitrelif, currentjob, copWhitelisting, medicWhitelisting, staffWhitelisting) VALUES(@steam, @name, @money, @bank, @hunger, @thirst, @pissrelif, @shitrelif, @currentjob, @copWhitelisting, @medicWhitelisting, @staffWhitelisting)', 
                {["@steam"] = _id, ["@name"] = _name, ["@money"] = money, ["@bank"] = bank, ["@hunger"] = hunger, ["@thirst"] = thirst, ["@pissrelif"] = pissrelif, ["@shitrelif"] = shitrelif, ["@currentjob"] = currentjob, ["@copWhitelisting"] = copWhitelisting, ["@medicWhitelisting"] = medicWhitelisting, ["@staffWhitelisting"] = staffWhitelisting}, 
                function(return2)
                end)
            end
        end)
    end
end)

RegisterServerEvent('RG_DB_UpdateJobs')
AddEventHandler("RG_DB_UpdateJobs", function(id, copWhitelisting, medicWhitelisting, currentjob)
    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)

    MySQL.Async.fetchAll("UPDATE players SET `currentjob`=@currentjob, `copWhitelisting`=@copWhitelisting, `medicWhitelisting`=@medicWhitelisting WHERE `id`=@steam", 
    {["@steam"] = _id, ["@currentjob"] = currentjob, ["copWhitelisting"] = copWhitelisting, ["medicWhitelisting"] = medicWhitelisting}, 
    function(return1)
    end)

end)

RegisterServerEvent('RG_DB_UpdateStats')
AddEventHandler("RG_DB_UpdateStats", function(id, hunger, thirst, pissrelif, shitrelif)

    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)

    MySQL.Async.fetchAll("UPDATE players SET `hunger`=@hunger, `thirst`=@thirst, `pissrelif`=@pissrelif, `shitrelif`=@shitrelif WHERE `id`=@steam", 
    {["@steam"] = _id, ["@hunger"] = hunger, ["@thirst"] = thirst, ["@pissrelif"] = pissrelif, ["@shitrelif"] = shitrelif}, 
    function(return1)
    end)

end)

RegisterServerEvent('RG_DB_UpdateFinance')
AddEventHandler("RG_DB_UpdateFinance", function(id, money, bank)

    local _src = source
    local _id = GetPlayerIdentifiers(_src)[1]
    local _name = GetPlayerName(_src)

    MySQL.Async.fetchAll("UPDATE players SET `money`=@money, `bank`=@bank WHERE `id`=@steam", 
    {["@steam"] = _id, ["@money"] = money, ["@bank"] = bank}, 
    function(return1)
    end)

end)