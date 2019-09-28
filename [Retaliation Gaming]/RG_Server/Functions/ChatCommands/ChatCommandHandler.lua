RegisterCommand("AOP", function(source, args, rawCommand)
	TriggerClientEvent('chatMessage', -1, "The Current AOP is: Statewide")
end, false)

RegisterCommand("help", function(source, args, rawCommand)
    TriggerClientEvent('chatMessage', -1, "If you require help on this server please ask in the chat or join the community Discord")
end, false)

RegisterCommand("Info", function(source, args, rawCommand)
    TriggerClientEvent('chatMessage', -1, "————————— Discord: SoonTM —————————") 
end, false)

RegisterCommand("kickme", function(source, args, rawCommand)
    --TriggerEvent("RG_Server_Kick")	 
end, false)