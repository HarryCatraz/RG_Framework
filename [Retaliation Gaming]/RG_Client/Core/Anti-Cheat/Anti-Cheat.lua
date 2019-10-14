local playercoords = GetEntityCoords(GetPlayerPed(-1))
Citizen.CreateThread(function()
    while true do
    Citizen.Wait(10000)
        if Config.EnableAntiCheat then
            if Config.CheckGodMode then
                if Config.IsInComa == false then
                    if Config.staffWhitelisting ~= 1 then
                        if(GetPlayerInvincible(PlayerId())) then
                            --TriggerServerEvent("RG_Server_Kick")
                        end
                    end 
                end
            end
            if Config.CheckMaxHealth then
                SetEntityMaxHealth(GetPlayerPed(-1), 200)
            end
            if Config.CheckInvisible then
                if Config.staffWhitelisting ~= 1 then
                    if(not IsEntityVisible(GetPlayerPed(-1))) then
                        --TriggerServerEvent("RG_Server_Kick")
                    end
                end
            end  
            if Config.CheckHealthRegen then
                if Config.IsInComa then
                    SetPlayerHealthRechargeMultiplier(PlayerId(), 0)
                else
                    SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
                end
            end
            if Config.CheckUnlimitedAmmo then
                SetPedInfiniteAmmoClip(GetPlayerPed(-1), 0)
            end
        end
    end
end)