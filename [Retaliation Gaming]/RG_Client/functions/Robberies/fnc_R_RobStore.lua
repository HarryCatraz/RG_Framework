RobableStoreLocations = {
    {49.4187, 2778.793 ,58.043},
    {263.894, 2606.463 ,44.983},
    {1039.958, 2671.134 ,39.550},
    {1207.260, 2660.175 ,37.899},
    {2539.685, 2594.192 ,37.944},
    {2679.858, 3263.946 ,55.240},
    {1687.156, 4929.392 ,42.078},
    {1701.314, 6416.028 ,32.763},
    {179.857, 6602.839 ,31.868},
    {-94.4619, 6419.594 ,31.489},
    {-2554.996, 2334.40 ,33.078},
    {-1800.375, 803.661 ,38.651},
    {-1437.622, -276.747 ,46.207},
    {-2096.243, -320.286 ,13.168},
    {-724.619, -935.1631 ,19.213},
    {-526.019, -1211.003 ,18.184},
    {-70.2148, -1761.792 ,29.534},
    {265.648, -1261.309 ,29.292},
    {819.653, -1028.846 ,26.403},
    {1208.951, -1402.56 ,35.224},
    {1181.381, -330.847 ,69.316},
    {620.843, 269.100 ,03.089},
    {2581.321, 362.039 ,108.468}
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedArmed(GetPlayerPed(-1), 7) then 
			for i = 1, #RobableStoreLocations do
				RobableStoreCoords = RobableStoreLocations[i]
				DrawMarker(1, RobableStoreCoords[1], RobableStoreCoords[2], RobableStoreCoords[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), RobableStoreCoords[1], RobableStoreCoords[2], RobableStoreCoords[3], true ) < 7) then
					DrawSpecialText("Press [~g~E~s~] to rob this store")
                    if(IsControlJustPressed(1, 38)) then
                        local streethash = GetStreetNameAtCoord(RobableStoreCoords[1], RobableStoreCoords[2], RobableStoreCoords[3])
                        local streetname = GetStreetNameFromHashKey(streethash)
                        TriggerClientEvent('chatMessage', -1, "[911] Store Robbery In Progress: "..streetname.." Store")
                        Wait(600) -- Wait 10 Minutes unitl spawning money
                        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), RobableStoreCoords[1], RobableStoreCoords[2], RobableStoreCoords[3], true ) < 7 then
                            TriggerClientEvent('chatMessage', -1, "[911] The Cash Register Has Been Opened At "..streetname.." Store")
                            CreateMoneyPickups(RobableStoreCoords[1], RobableStoreCoords[2], RobableStoreCoords[3], 0,8,0)
                            TriggerClientEvent("fnc_AddMoneyCash", GetPlayerPed(-1), 20000)
                        else
                            TriggerClientEvent('chatMessage', -1, "[911] The Robber Has Fled At "..streetname.." Store")
                        end
					end
				end
			end
		end
	end
end)