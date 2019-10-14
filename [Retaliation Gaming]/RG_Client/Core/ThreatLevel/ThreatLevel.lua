function textThreatLevel() 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Threat Level: " .. Config.Threatlevel)
    DrawText( 0.0001, 0.0001) -- x,y of the screen
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        textThreatLevel()
    end
end)

RegisterNetEvent('RG_Client_SetThreat')
AddEventHandler('RG_Client_SetThreat', function(threat)
    if Config.currentJob == "Cop" then
        Config.Threatlevel = threat
    end
end)

AddEventHandler('onClientResourceStart', function (resourceName)
    TriggerServerEvent("Server::GetThreat")
end)