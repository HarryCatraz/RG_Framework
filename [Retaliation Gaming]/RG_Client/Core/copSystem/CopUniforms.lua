local isinUniform = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if Config.currentJob == "Cop" then
			local playerPed = PlayerPedId()
			local coords    = GetEntityCoords(playerPed)
			local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
			for k, _ in pairs(Config.CopUniformLocations) do
				local distance = Vdist(pedX, pedY, pedZ, Config.CopUniformLocations[k].X, Config.CopUniformLocations[k].Y, Config.CopUniformLocations[k].Z)
				if distance < 6.0 then
					DrawMarker(20, Config.CopUniformLocations[k].X, Config.CopUniformLocations[k].Y, Config.CopUniformLocations[k].Z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 50, 50, 204, 100, false, true, 2, true, false, false, false)
                    TriggerEvent('skinchanger:getSkin', function(skin)
                        if isinUniform then
                            RG_Notify("done","Press E To Change Into Police Uniform")
                            DrawNotification(true, false)
                            if IsControlJustReleased(0, 38) then
                                if skin.sex == 0 then
                                    TriggerEvent('skinchanger:loadClothes', skin, Config.CopUniformIDs)
                                end
                            end
                        else
                            RG_Notify("done","Press E To Change Into Civilian Clothes")
                            DrawNotification(true, false)
                            if IsControlJustReleased(0, 38) then
                                if skin.sex == 0 then
                                    local clothesSkin = {
                                        ['tshirt_1'] = 57,    
                                        ['tshirt_2'] = 0
                                    }
                                    TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
                                end
                            end
                        end
                    end)
				end
			end
		end
	end
end)