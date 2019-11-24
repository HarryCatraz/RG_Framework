kickWarning = true
Citizen.CreateThread(function()
	local playerPed = GetPlayerPed(-1)
	while true do
		Citizen.Wait(0)
		Wait(1000)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)
			if currentPos == prevPos then
				if time > 0 then
					if kickWarning and time == math.ceil(Config.AFKKickTime / 4) then
						TriggerEvent("chatMessage", "WARNING", {255, 0, 0}, "Retaliation Gaming: You will be kicked due to inactivity in " .. time)
					end
					time = time - 1
				else
					--TriggerServerEvent("RG_Server_Kick")
				end
			else
				time = Config.AFKKickTime
			end
			prevPos = currentPos
		end
	end
end)