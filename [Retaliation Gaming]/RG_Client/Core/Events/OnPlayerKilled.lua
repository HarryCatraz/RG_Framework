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
			RG_ResetStats()
		end
		if not IsEntityDead(playerPed) then
			alreadyDead2 = false
		end
	end
end) 

function RG_ResetStats()
	Config.money = 0
	Config.currentJob = "Unemployed"
	Config.hunger = 0
	Config.thirst = 0
	Config.shitrelif = 0
	Config.pissrelif = 0
	TriggerServerEvent('RG_DB_UpdateStats', Config.ID, Config.hunger, Config.thirst, Config.pissrelif, Config.shitrelif)
	TriggerServerEvent('RG_DB_UpdateFinance', Config.ID, Config.money, Config.bank)
end