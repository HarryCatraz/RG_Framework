function RG_GiveWeapon(weapon, ammo)
    local ped = GetPlayerPed(-1)
    local weaponHash = GetHashKey(weapon)
    local ammoCount = ammo
    GiveWeaponToPed(ped, weaponHash, ammoCount, 1, 0)
end

RegisterNetEvent("RG_GiveWeapon")
AddEventHandler("RG_GiveWeapon", function(weapon, ammo)
    RG_GiveWeapon(weapon, ammo)
end)