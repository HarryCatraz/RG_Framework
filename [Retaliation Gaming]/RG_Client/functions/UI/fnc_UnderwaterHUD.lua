function textOxygen(string, content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString(string .. content.."Secs")
    DrawText(0.88,0.86)
end
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPedMaxTimeUnderwater(GetPlayerPed(-1), 15.0)  
        if IsPedSwimmingUnderWater(GetPlayerPed(-1)) and not IsPedInVehicle(GetPlayerPed(-1)) then 
            breath = GetPlayerUnderwaterTimeRemaining(PlayerId())
            breathrounded = math.floor(breath * 10) / 10 
            if breathrounded <= 0 then
                textOxygen("Drowning For: " ,breathrounded)
            else
                textOxygen("Oxygen Left: ", breathrounded)
            end
        end
    end
end)