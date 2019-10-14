Citizen.CreateThread(function()
	alreadyDead = false
    while true do
        Citizen.Wait(0)
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
				RG_CreateEvidence(playerPed, killer, "Murder")
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
			--Config.bank = 0
	 		--Config.hunger = 0
			--Config.money = 0
			--Config.pissrelif = 0
			--Config.shitrelif = 0
			--Config.thirst = 0
			--SetEntityCoords(playerped, Config.DebugLocationX, Config.DebugLocationY, Config.DebugLocationZ, 0, 0, 0, 0)
			-- Open Spawn Menu
		end
		if not IsEntityDead(playerPed) then
			alreadyDead2 = false
		end
	end
end) 
