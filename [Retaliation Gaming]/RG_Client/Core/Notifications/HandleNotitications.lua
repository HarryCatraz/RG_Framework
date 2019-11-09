function RG_Notify(type, msg)
	if type == "done" then
		showDoneNotif(msg)
    elseif type == "warn" then
    	showErrorNotif(msg)
    else
    	showNoneNotif(msg)
    end
end

RegisterNetEvent('RG_ShowNotification')
AddEventHandler('RG_ShowNotification', function(text)
	RG_Notify("done","done",text)
end)

function showDoneNotif(mes)
	SendNUIMessage({
		showDone = true,
		text = mes
	})
end

function showWarnNotif(mes)
	SendNUIMessage({
		showWarn = true,
		text = mes
	})
end

RegisterNetEvent("showErrorNotif")
AddEventHandler("showErrorNotif", function(mes)
	SendNUIMessage({
		showError = true,
		text = mes
	})
end)

function showNoneNotif(mes)
	SendNUIMessage({
		showNone = true,
		text = mes
	})
end