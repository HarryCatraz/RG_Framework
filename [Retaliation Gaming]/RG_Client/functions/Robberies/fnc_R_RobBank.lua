Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		if IsPedArmed(GetPlayerPed(-1), 7) then 
			for i = 1, #Config.RobableBankLocations do
				DrawMarker(1, Config.RobableBankLocations[i].x, Config.RobableBankLocations[i].y, Config.RobableBankLocations[i].z, 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.RobableBankLocations[i].x, Config.RobableBankLocations[i].y, Config.RobableBankLocations[i].z, true ) < 7) and not Config.recentmajorcrime then
                    DrawSpecialText("Press [~g~E~s~] to rob this bank") 
                    if(IsControlJustPressed(1, 38)) then
                        local streethash = GetStreetNameAtCoord(Config.RobableBankLocations[i].x, Config.RobableBankLocations[i].y, Config.RobableBankLocations[i].z)
                        local streetname = GetStreetNameFromHashKey(streethash)
                        TriggerEvent('chatMessage', "[911] Bank Robbery In Progress: "..streetname)
                        Config.recentmajorcrime = true
                        Wait(Config.BankSpawnMoneyDelay * 60000)
                        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.RobableBankLocations[i].x, Config.RobableBankLocations[i].y, Config.RobableBankLocations[i].z, true ) < 7 then
                            TriggerEvent('chatMessage', "[911] The Vault Has Been Opened At "..streetname.." Bank")
                            CreateMoneyPickups(Config.RobableBankLocations[i].x, Config.RobableBankLocations[i].y, Config.RobableBankLocations[i].z, 0,8,0)
                            Config.money = Config.money + (math.random(Config.BankRobberyMoneyRange.lower, Config.BankRobberyMoneyRange.higher))
                            TriggerEvent('chatMessage', "[911] The Robber Has Fled At "..streetname.." Bank")
                            Wait(Config.MajorCrimeCooldown * 60000)
                            Config.recentmajorcrime = false
                        end
					end
				end
			end
		end
	end
end)