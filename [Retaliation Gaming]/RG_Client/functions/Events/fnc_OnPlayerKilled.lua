RegisterNetEvent('RG_ShowNotification')
AddEventHandler('RG_ShowNotification', function(text)
	RG_Notify(text)
end)

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

AddEventHandler("onPlayerKilled",function(player)
	Config.bank = 0
	Config.hunger = 0
	Config.money = 0
	Config.pissrelif = 0
	Config.shitrelif = 0
	Config.thirst = 0
	SetEntityCoords(GetPlayerPed(-1), Config.DebugLocationX, Config.DebugLocationY, Config.DebugLocationZ, 0, 0, 0, 0)
	SpawnMenu:Visible(not SpawnMenu:Visible())
end)