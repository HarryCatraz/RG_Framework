AddEventHandler('playerSpawned', function()
    SetPedComponentVariation(GetPlayerPed(-1), 0, 0, 0, 2) -- Random Face
    SetPedComponentVariation(GetPlayerPed(-1), 2, 11, 4, 2) -- Random Hair
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Config.EnableDispatch then
            for i = 1, 15 do
                EnableDispatchService(i, true)
            end
        else
            for i = 1, 15 do
                EnableDispatchService(i, false)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPlayerWantedLevel(GetPlayerPed(-1), 0, false)
        SetPlayerWantedLevelNow(GetPlayerPed(-1), false)
    end
end)

Citizen.CreateThread(function()
    if NetworkIsSessionStarted() then
        TriggerServerEvent('RG_DB_SelectRequest')
        Wait(1000)
        -- Open Spawn Menu
        return
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.syncDelay * 60000)
        if NetworkIsSessionStarted() then
            TriggerServerEvent('RG_DB_SyncRequest')
        end
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