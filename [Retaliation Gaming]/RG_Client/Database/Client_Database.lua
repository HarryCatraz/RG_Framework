RegisterNetEvent('RG_Client_SelectRequest')
AddEventHandler('RG_Client_SelectRequest', function(id, name, money, bank, hunger, thirst, pissrelif, shitrelif, currentjob, copWhitelisting, medicWhitelisting, staffWhitelisting)
    Config.ID = id
    Config.Name = name
    Config.money = money
    Config.bank = bank
    Config.hunger = hunger
    Config.thirst = thirst
    Config.pissrelif = pissrelif
    Config.shitrelif = shitrelif
    Config.currentJob = currentjob
    Config.copWhitelisting = copWhitelisting
    Config.medicWhitelisting = medicWhitelisting
    Config.staffWhitelisting = staffWhitelisting
end)