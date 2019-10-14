Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.paycheckDelay * 60000)
        if Config.currentJob == "Cop" then
            Config.bank = Config.bank + Config.PaycheckCop
        end
        if Config.currentJob == "Medic" then
            Config.bank = Config.bank + Config.PaycheckMedic
        end  
        if Config.currentJob == "Security" then
            Config.bank = Config.bank + Config.PaycheckSecurity
        end
        if Config.currentJob == "Taxi" then
            Config.bank = Config.bank + Config.PaycheckTaxi
        end
        if Config.currentJob == "Unemployed" then
            Config.bank = Config.bank + Config.PaycheckCiv
        end
    end
end)