RegisterNetEvent("Client::AddMoneyCash")
AddEventHandler("Client::AddMoneyCash", function(amount, target)
    RG_Alert(amount.. "Given To Player")
end)