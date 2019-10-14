function RG_Alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
    DrawNotification(false, true)
end

function RG_Notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end

RegisterNetEvent('RG_ShowNotification')
AddEventHandler('RG_ShowNotification', function(text)
	RG_Notify(text)
end)