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
        Citizen.Wait(Config.syncDelay)
        TriggerEvent("Client_Database_Bridge_C2S")
    end
end)