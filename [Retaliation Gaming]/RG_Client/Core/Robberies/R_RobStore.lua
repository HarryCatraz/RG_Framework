Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedArmed(GetPlayerPed(-1), 7) then 
			for i = 1, #Config.RobableStoreLocations do
				DrawMarker(1, Config.RobableStoreLocations[i].x, Config.RobableStoreLocations[i].y, Config.RobableStoreLocations[i].z, 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.RobableStoreLocations[i].x, Config.RobableStoreLocations[i].y, Config.RobableStoreLocations[i].z, true ) < 7) then
					DrawSpecialText("Press [~g~E~s~] to rob this store")
                    if(IsControlJustPressed(1, 38)) then
                        local streethash = GetStreetNameAtCoord(Config.RobberableStoreLocations[i].x, Config.RobableStoreLocations[i].y, Config.RobableStoreLocations[i].z)
                        local streetname = GetStreetNameFromHashKey(streethash)
                        TriggerEvent('chatMessage', "[911] Store Robbery In Progress: "..streetname.." Store")
                        Wait(Config.StoreSpawnMoneyDelay * 60000)
                        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.RobableStoreLocations[i].x, Config.RobberableStoreLocations[i].y, Config.RobberableStoreLocations[i].z, true ) < 7 then
                            TriggerEvent('chatMessage', "[911] The Cash Register Has Been Opened At "..streetname.." Store")
                            CreateMoneyPickups(Config.RobableStoreLocations[i].x, Config.RobableStoreLocations[i].y, Config.RobableStoreLocations[i].z, 0,8,0)
                            Config.money = Config.money + (math.random(Config.StoreRobberyMoneyRange.lower, Config.StoreRobberyMoneyRange.higher))
                        else
                            TriggerEvent('chatMessage', "[911] The Robber Has Fled At "..streetname.." Store")
                        end
					end
				end
			end
		end
	end
end)