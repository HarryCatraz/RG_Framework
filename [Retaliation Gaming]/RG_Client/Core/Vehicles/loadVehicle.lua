function RG_LoadVehicleModel(veh) 
    local vehiclehash = GetHashKey(veh)

    RequestModel(vehiclehash)

    local waiting = 0
    while not HasModelLoaded(vehiclehash) do
        waiting = waiting + 100
        Citizen.Wait(100)
        if waiting > 5000 then
            RG_Notify("done","Could not load the vehicle model in time, a crash was prevented.")
            break
        end
    end
end