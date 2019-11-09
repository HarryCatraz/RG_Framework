function RG_SpawnVehicle(veh)
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
    local vehiclehash = GetHashKey(veh)
    CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId())+90, 1, 0)
end

RegisterNetEvent("RG_SpawnVehicle")
AddEventHandler("RG_SpawnVehicle", function(veh)
    RG_SpawnVehicle(veh)
end)