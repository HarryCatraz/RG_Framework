AddEventHandler('playerSpawned', function()
    local ped = GetPlayerPed(-1)
    SetPedComponentVariation(ped, 0, 0, 0, 2) -- Random Face
    SetPedComponentVariation(ped, 2, 11, 4, 2) -- Random Hair
    RG_Notify("done","Welcome to Retaliation Gaming")
    RG_Notify("done","Please Set Up Your Player Appearance On The 'M' menu before teleporting!")
    TriggerEvent("RG_NUI::OpenMenu", "SpawnMenu")
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
    local ped = GetPlayerPed(-1)
    while true do
        Citizen.Wait(0)
        SetPlayerWantedLevel(ped, 0, false)
        SetPlayerWantedLevelNow(ped, false)
    end
end)

Citizen.CreateThread(function()
    if NetworkIsSessionStarted() then
        TriggerServerEvent('RG_DB_SelectRequest')
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