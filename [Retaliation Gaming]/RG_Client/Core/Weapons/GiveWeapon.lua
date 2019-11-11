function RG_SpawnVehicle(weapon, ammo)
    local ped = GetPlayerPed(-1)
    local weaponHash = GetHashKey(weapon)
    local ammoCount = ammo
    CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId())+90, 1, 0)
    GiveWeaponToPed(ped, weaponHash, ammoCount, 1, 0)
end

RegisterNetEvent("RG_GiveWeapon")
AddEventHandler("RG_GiveWeapon", function(weapon, ammo)
    RG_GiveWeapon(weapon, ammo)
end)