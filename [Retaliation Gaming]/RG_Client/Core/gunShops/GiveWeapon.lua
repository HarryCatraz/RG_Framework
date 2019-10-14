function RG_GiveWeapon(weaponHash, spawnAmmo)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), spawnAmmo, false, false)
end