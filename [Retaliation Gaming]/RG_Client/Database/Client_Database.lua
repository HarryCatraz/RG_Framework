-- https://i.imgur.com/sTqa0r7.png

RegisterCommand("sync", function(source, args) 
    TriggerServerEvent("SVR_UpdateRequest", args)
end)

RegisterCommand("get", function(source, args) 
    TriggerServerEvent("SVR_GetRequest", args)
end)

RegisterNetEvent('CLT_GetRequest')
AddEventHandler('CLT_GetRequest', function(id, name, args)
    Config.ID = id
    Config.Name = name
    Config.Args = args
end)