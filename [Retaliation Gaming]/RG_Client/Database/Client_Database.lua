-- https://i.imgur.com/sTqa0r7.png

RegisterNetEvent('RG_Client_SelectRequest')
AddEventHandler('RG_Client_SelectRequest', function(id, name, money, bank, hunger, thirst, pissrelif, shitrelif, currentjob)
    Config.ID = id
    Config.Name = name
    Config.money = money
    Config.bank = bank
    Config.hunger = hunger
    Config.thirst = thirst
    Config.pissrelif = pissrelif
    Config.shitrelif = shitrelif
    Config.currentJob = currentjob
end)