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