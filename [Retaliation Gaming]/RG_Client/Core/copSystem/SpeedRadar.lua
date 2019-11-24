function textTargetSpeed(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Target Speed: " ..content.."MPH")
    DrawText(0.88,0.89)
end

Citizen.CreateThread(function()
    local ped = GetPlayerPed(-1)
    while true do
        Citizen.Wait(0)
        if(IsPedInAnyVehicle(ped, false)) then
            if (GetVehicleClass(GetVehiclePedIsUsing(ped)) == 18) then
                local pos = GetEntityCoords(ped)
                local carM = GetClosestVehicle(pos['x'], pos['y'], pos['z'], 50.0,0,70)
                local TargetSpeedMph= GetEntitySpeed(carM)*2.236936
                textTargetSpeed(math.floor(TargetSpeedMph))
            end
        end
    end
end)