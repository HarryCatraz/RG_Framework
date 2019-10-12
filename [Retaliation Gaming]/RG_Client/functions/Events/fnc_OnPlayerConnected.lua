AddEventHandler('playerSpawned', function()
    SetPedComponentVariation(GetPlayerPed(-1), 0, 0, 0, 2) -- Random Face
    SetPedComponentVariation(GetPlayerPed(-1), 2, 11, 4, 2) -- Random Hair
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPlayerWantedLevel(GetPlayerPed(-1), 0, false)
        SetPlayerWantedLevelNow(GetPlayerPed(-1), false)
        if Config.EnableDispatch then
            for i = 1, 15 do
                EnableDispatchService(i, false)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.syncDelay * 1000)
        if NetworkIsSessionStarted() then
            TriggerServerEvent('RG_DB_SyncRequest')
            return
        end
    end
end)

Citizen.CreateThread(function()
    if NetworkIsSessionStarted() then
        TriggerServerEvent('RG_DB_SelectRequest')
        Wait(1000)
        exports['RG_NUI']:exp_OpenSpawnMenu()
        return
    end
end)

RegisterCommand("sync", function(source) 
    if NetworkIsSessionStarted() then
        TriggerServerEvent('RG_DB_SyncRequest', Config.ID, Config.Name, Config.money, Config.bank, Config.hunger, Config.thirst, Config.pissrelif, Config.shitrelif, Config.currentJob, Config.copWhitelisting, Config.medicWhitelisting, Config.staffWhitelisting)
        return
    end
end)

RegisterCommand("get", function(source) 
    if NetworkIsSessionStarted() then
        TriggerServerEvent('RG_DB_SelectRequest')
        return
    end
end)