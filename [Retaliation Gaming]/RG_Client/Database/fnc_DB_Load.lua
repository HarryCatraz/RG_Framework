RegisterNetEvent("Client_DB_player_Load")
AddEventHandler("Client_DB_player_Load", function(weapons, ped, coplevel, emslevel, cash, bank, hunger, thirst, relif)

    SetPlayerModel(GetPlayerPed(-1), ped)
    GiveWeaponToPed(GetPlayerPed(-1), weapons, 300, false, false)

    Config.cop_isonduty = coplevel
    Config.medic_isonduty = emslevel
    Config.life_money = cash
    Config.life_bank = bank
    Config.life_hunger = hunger
    Config.life_thirst = thirst
    Config.life_relif = relif
end)