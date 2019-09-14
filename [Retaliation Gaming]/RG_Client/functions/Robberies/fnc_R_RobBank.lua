RobableBankLocations = {
	{-2964.76, 482.658, 15.7068},
	{260.2324, 205.886, 106.284},
	{150.061, -1039.99,  29.3778},
    {-1213.57, -328.829, 37.7908},
    {-109.453, 6464.05, 31.6267}
}

Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		if IsPedArmed(GetPlayerPed(-1), 7) then 
			for i = 1, #RobableBankLocations do
				RobableBankCoords = RobableBankLocations[i]
				DrawMarker(1, RobableBankCoords[1], RobableBankCoords[2], RobableBankCoords[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), RobableBankCoords[1], RobableBankCoords[2], RobableBankCoords[3], true ) < 7) and not Config.recentmajorcrime then
                    DrawSpecialText("Press [~g~E~s~] to rob this bank") 
                    if(IsControlJustPressed(1, 38)) then
                        local streethash = GetStreetNameAtCoord(RobableBankCoords[1], RobableBankCoords[2], RobableBankCoords[3])
                        local streetname = GetStreetNameFromHashKey(streethash)
                        TriggerClientEvent('chatMessage', -1, "[911] Bank Robbery In Progress: "..streetname)
                        Config.recentmajorcrime = true
                        Wait(Config.BankSpawnMoneyDelay * 60000)
                        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), RobableBankCoords[1], RobableBankCoords[2], RobableBankCoords[3], true ) < 7 then
                            TriggerClientEvent('chatMessage', -1, "[911] The Vault Has Been Opened At "..streetname.." Bank")
                            CreateMoneyPickups(RobableBankCoords[1], RobableBankCoords[2], RobableBankCoords[3], 0,8,0)
                            Config.money = Config.money + (math.random(Config.BankRobberyMoneyRange.lower, Config.BankRobberyMoneyRange.higher))
                            TriggerClientEvent('chatMessage', -1, "[911] The Robber Has Fled At "..streetname.." Bank")
                            Wait(Config.MajorCrimeCooldown * 60000)
                            Config.recentmajorcrime = false
                        end
					end
				end
			end
		end
	end
end)