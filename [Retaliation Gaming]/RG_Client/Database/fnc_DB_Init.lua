Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.syncDelay)
        --TriggerClientEvent("DB_player_Update")
    end
end)