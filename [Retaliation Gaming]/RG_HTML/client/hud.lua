local money = 0
local bank = 0
local hidehud = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
    end
end)
	
RegisterCommand("hud", function(source, args, rawCommand) -- Its showing/hiding hud - just a dev command
    if (hidehud ~= false) then
        hidehud = false
        TriggerEvent("RG_HTML:showHUD")
        DisplayHud(true)
    else
        hidehud = true
        DisplayHud(false)
        TriggerEvent("RG_HTML:hideHUD")
    end
end, false)
	
RegisterNetEvent('RG_HTML:showHUD')
AddEventHandler('RG_HTML:showHUD', function()
	SendNUIMessage({
		showhud = true
	})
end)	

RegisterNetEvent('RG_HTML:hideHUD')
AddEventHandler('RG_HTML:hideHUD', function()
	SendNUIMessage({
		hidehud = true
	})
end)	
	
RegisterNetEvent('RG_HTML:activateMoney')
AddEventHandler('RG_HTML:activateMoney', function(_money)
	SendNUIMessage({
		setmoney = true,
		money = _money
	})
end)

RegisterNetEvent('RG_HTML:activateBank')
AddEventHandler('RG_HTML:activateBank', function(_bank)
	SendNUIMessage({
		setbank = true,
		bank = _bank
	})
end)	
	
RegisterNetEvent("RG_HTML:moneyLoaded")
AddEventHandler("RG_HTML:moneyLoaded", function(_money)
	SendNUIMessage({
		setmoney = true,
		money = _money
	})
end)

RegisterNetEvent("RG_HTML:bankLoaded")
AddEventHandler("RG_HTML:bankLoaded", function(_bank)
	SendNUIMessage({
		setbank = true,
	    bank = _bank
	})
end)

RegisterNetEvent("RG_HTML:addMoney")
AddEventHandler("RG_HTML:addMoney", function(_money, native, current)
	SendNUIMessage({
			addcash = true,
			money = _money
		})
end)

RegisterNetEvent("RG_HTML:addBank")
AddEventHandler("RG_HTML:addBank", function(_bank, native, current)
	SendNUIMessage({
			addbank = true,
			bank = _bank
		})
end)

RegisterNetEvent("RG_HTML:removeMoney")
AddEventHandler("RG_HTML:removeMoney", function(_money, native, current)
	SendNUIMessage({
			removecash = true,
			money = _money
		})
end)

RegisterNetEvent("RG_HTML:removeBank")
AddEventHandler("RG_HTML:removeBank", function(_bank, native, current)
	SendNUIMessage({
			removebank = true,
			bank = _bank
		})
end)