local TaxiLocations = {
    {-2964.76, 482.658, 15.7068}
}

RegisterNetEvent("startTaxi")
AddEventHandler("startTaxi", function()
    SetNotificationTextEntry("STRING")
    AddTextComponentString("<b>Job System: You have started a taxi job.</b>")
    DrawNotification(true, false)

    SetNotificationTextEntry("STRING")
    AddTextComponentString("<b>Taxi Manager: Drive around and find customers to give rides. You'll be paid hourly plus tips.</b>")
    DrawNotification(true, false)

    Config.currentJob = "Taxi"

    while (true) do
        Wait(Config.paycheckDelay)
        Config.life_bank = Config.life_bank + 1500
    end
end)