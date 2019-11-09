local TaxiLocations = {
    {-2964.76, 482.658, 15.7068}
}

RegisterNetEvent("startTaxi")
AddEventHandler("startTaxi", function()

    RG_Notify("done","<b>Job System: You have started a taxi job.</b>")

    Citizen.Wait(3000)

    RG_Notify("done","<b>Taxi Manager: Drive around and find customers to give rides. You'll be paid hourly plus tips.</b>")

    Config.currentJob = "Taxi"
end)