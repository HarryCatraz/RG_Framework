RegisterCommand("snowball", function(source, args, raw)
    if Config.ChristmasEvent then
        while not HasAnimDictLoaded("anim@mp_snowball") do
            RequestAnimDict("anim@mp_snowball")
            Citizen.Wait(5)
        end
        TaskPlayAnim( GetPlayerPed(-1), "anim@mp_snowball", "pickup_snowball", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
        toggleWeaponEquipped("WEAPON_SNOWBALL")
    else
        RG_Notify("done", "Theres no snow to make snowballs!")
    end
end, false)