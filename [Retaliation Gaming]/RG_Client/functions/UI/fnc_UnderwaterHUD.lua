function textOxygen(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Oxygen Left: " ..content.."Secs")
    DrawText(0.88,0.89)
end
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        if IsPedSwimmingUnderWater(GetPlayerPed(-1)) and not IsPedInVehicle(GetPlayerPed(-1)) then 
            textOxygen(math.floor(GetPlayerUnderwaterTimeRemaining(GetPlayerPed(-1))))
        end
    end
end)