RegisterNetEvent("Client_DB_player_Update")
AddEventHandler("Client_DB_player_Update", function()
    local weapons = GetSelectedPedWeapon(GetPlayerPed(-1))
    local ped = GetEntityModel(GetPlayerPed(-1))
    local coplevel = Config.cop_isonduty
    local emslevel = Config.medic_isonduty
    local cash = Config.life_money
    local bank = Config.life_bank
    local hunger = Config.life_hunger
    local thirst = Config.life_thirst
    local relif = Config.life_relif
    TriggerServerEvent("DB_player_Update", weapons, ped, coplevel, emslevel, cash, bank, hunger, thirst, relif)
end)
