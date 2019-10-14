function textSpeedo(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Speed: " ..content.."MPH")
    DrawText(0.88,0.86)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        --local mph = 2.2369
        --local kph = 3.6 
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.2369
        -- Check if the ped is in a vehicle
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            textSpeedo(math.floor(speed))
        end
    end
end)