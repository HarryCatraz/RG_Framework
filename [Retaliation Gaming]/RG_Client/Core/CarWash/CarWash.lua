Key = 201 -- ENTER

vehicleWashStation = {
	{26.5906,  -1392.0261,  27.3634},
	{167.1034,  -1719.4704,  27.2916},
	{-74.5693,  6427.8715,  29.4400},
	{-699.6325,  -932.7043,  17.0139}
}

Citizen.CreateThread(function()
	Citizen.Wait(0)
	for i = 1, #vehicleWashStation do
		garageCoords = vehicleWashStation[i]
		stationBlip = AddBlipForCoord(garageCoords[1], garageCoords[2], garageCoords[3])
		SetBlipSprite(stationBlip, 100)
		SetBlipAsShortRange(stationBlip, true)
	end
    return
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

Citizen.CreateThread(function ()
	local ped = GetPlayerPed(-1)
	while true do
		Citizen.Wait(0)
		if IsPedSittingInAnyVehicle(ped) then 
			for i = 1, #vehicleWashStation do
				garageCoords2 = vehicleWashStation[i]
				DrawMarker(1, garageCoords2[1], garageCoords2[2], garageCoords2[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(GetEntityCoords(ped), garageCoords2[1], garageCoords2[2], garageCoords2[3], true ) < 5 then
					DrawSpecialText("Press [~g~ENTER~s~] to clean your vehicle!")
					if(IsControlJustPressed(0, Key)) then
						if Config.money < 50 then
							RG_Notify("done","You dont have enough money to get your car washed!")
						else
							Config.money = Config.money - 50
							local vehDirt = GetVehicleDirtLevel(GetVehiclePedIsIn(ped,false))
							SetVehicleDirtLevel(GetVehiclePedIsIn(ped,false), 0.0)
							SetVehicleUndriveable(GetVehiclePedIsIn(ped,false), false)
							RG_Notify("done","Your cars been washed!")
						end
					end
				end
			end
		end
	end
end)