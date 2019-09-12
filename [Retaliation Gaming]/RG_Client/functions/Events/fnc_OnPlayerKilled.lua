RegisterNetEvent('showNotification')
AddEventHandler('showNotification', function(text)
	ShowNotification(text)
end)
function ShowNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(0,1)
end
Citizen.CreateThread(function()
    -- main loop thing
	alreadyDead = false
    while true do
        Citizen.Wait(50)
		local playerPed = GetPlayerPed(-1)
		if IsEntityDead(playerPed) and not alreadyDead then
			killer = GetPedKiller(playerPed)
			killername = false
			for id = 0, 64 do
				if killer == GetPlayerPed(id) then
					killername = GetPlayerName(id)
				end				
			end
			if killer == playerPed then
				TriggerServerEvent('playerDied',0,0)
			elseif killername then
				TriggerServerEvent('playerDied',killername,1)
			else
				TriggerServerEvent('playerDied',0,2)
			end
			alreadyDead = true
		end
		if not IsEntityDead(playerPed) then
			alreadyDead = false
		end
	end
end)

Citizen.CreateThread(function()
    local playerPed = GetPlayerPed(-1)
	alreadyDead2 = false
    while true do
        Citizen.Wait(0)
		if IsEntityDead(playerPed) and not alreadyDead2 then
			Config.bank = 0
			Config.hunger = 0
			Config.money = 0
			Config.pissrelif = 0
			Config.shitrelif = 0
			Config.thirst = 0
			SetEntityCoords(playerPed, 3153.9, 1281.33, 3.17, 0, 0, 0, 0)
		end
		if not IsEntityDead(playerPed) then
			alreadyDead2 = false
		end
	end
end)