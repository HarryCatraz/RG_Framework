server_threatlevel = "Green"

RegisterServerEvent('Server::ChangeThreat') 
AddEventHandler("Server::ChangeThreat", function(arg1)
    server_threatlevel = arg1
    TriggerServerEvent('Server::GetThreat', server_threatlevel)
end)

RegisterServerEvent('Server::GetThreat')
AddEventHandler('Server::GetThreat',function(arg1)
    server_threatlevel = arg1
	TriggerClientEvent('Client::getThreat',source,server_threatlevel)
end)

-- RegisterCommand("threat", function(source, args)
--     threatlevelargs = args[1]
--     if (Config.currentJob == "Cop") then
--         TriggerClientEvent("Client::ChangeThreat", threatlevelargs)
--     end
-- end, false)