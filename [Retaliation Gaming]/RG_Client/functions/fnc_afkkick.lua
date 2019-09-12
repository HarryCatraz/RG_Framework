secondsUntilKick = 900 -- 15 Minutes
kickWarning = true
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		Wait(1000)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)
			if currentPos == prevPos then
				if time > 0 then
					if kickWarning and time == math.ceil(secondsUntilKick / 4) then
						TriggerEvent("chatMessage", "WARNING", {255, 0, 0}, "Retaliatin Gaming: You will be kicked due to inactivity in " .. time)
					end
					time = time - 1
				else
					TriggerServerEvent("CATRAZAFKKICK")
				end
			else
				time = secondsUntilKick
			end
			prevPos = currentPos
		end
	end
end)