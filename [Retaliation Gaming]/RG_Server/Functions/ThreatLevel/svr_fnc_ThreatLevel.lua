RegisterCommand("threat", function(source, args)
    threatlevelargs = args[1]
    TriggerClientEvent("RG_Client_SetThreat", -1,  threatlevelargs)
end, false)