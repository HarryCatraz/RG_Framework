function GetPlayers()
	local players = {}
	for i = 0, 31 do
		if NetworkIsPlayerActive(i) then
			table.insert(players, i)
		end
	end
	return players
end

Citizen.CreateThread(function()
	local blips = {}
	local currentPlayer = PlayerId()
	while true do
		Wait(100)
		local players = GetPlayers()
		for player = 0, 64 do
            if player ~= currentPlayer and NetworkIsPlayerActive(player) then
                if (Config.currentJob == "Cop") then
                    local playerPed = GetPlayerPed(player)
                    local playerName = GetPlayerName(player)
                    RemoveBlip(blips[player])
                    local new_blip = AddBlipForEntity(playerPed)
                    -- Add player name to blip
                    SetBlipNameToPlayerName(new_blip, player)
                    -- Make blip white
                    SetBlipColour(new_blip, player + 10)

                    SetBlipAlpha(new_blip, 255)

                    -- Enable text on blip
                    SetBlipCategory(new_blip, 2)
                    -- Set the blip to shrink when not on the minimap
                    -- Citizen.InvokeNative(0x2B6D467DAB714E8D, new_blip, true)
                    -- Shrink player blips slightly
                    SetBlipScale(new_blip, 0.9)
                    -- Add nametags above head
                    Citizen.InvokeNative(0xBFEFE3321A3F5015, playerPed, playerName, false, false, '', false)
                    -- Record blip so we don't keep recreating it
                    blips[player] = new_blip
                else
                    SetBlipAlpha(new_blip, 0)
                end
			end
		end
	end
end)


-- Citizen.CreateThread(function()         
--     local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
--     while true do
--         Citizen.Wait(0)
--         if (Config.currentJob == "Cop") then
--             copMarker.blip = AddBlipForCoord(pedX, pedY, pedZ)
--             SetBlipSprite(copMarker.blip, 1)
--             SetBlipScale(copMarker.blip, 0.9)
--             SetBlipColour(copMarker.blip, 26)
--             SetBlipAsShortRange(copMarker.blip, true)
--             BeginTextCommandSetBlipName("STRING")
--             AddTextComponentString("Law Enforcement Officer")
--             EndTextCommandSetBlipName(copMarker.blip)
--             SetBlipDisplay(copMarker.blip, 4)
--         else
--             SetBlipDisplay(copMarker.blip, 0)
--         end
--     end
-- end)