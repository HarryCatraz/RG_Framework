Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local ped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(ped, false) then
			local veh = GetVehiclePedIsUsing(ped)
            if GetPedInVehicleSeat(veh, -1) == ped then
                if Config.HornLights then
                    if Config.EmergencyHornLights then
                        if GetVehicleClass(veh) == 18 then
                            if IsDisabledControlJustPressed(0, 86) then
                                SetVehicleLights(veh, 2)
                                SetVehicleLightMultiplier(veh, Config.HornLightsStrength)
                            elseif IsDisabledControlJustReleased(0, 86) then
                                SetVehicleLights(veh, 0)
                                SetVehicleLightMultiplier(veh, 1.0)
                            end
                        end
                    else
                        if IsDisabledControlJustPressed(0, 86) then
                            SetVehicleLights(veh, 2)
                            SetVehicleLightMultiplier(veh, Config.HornLightsStrength)
                        elseif IsDisabledControlJustReleased(0, 86) then
                            SetVehicleLights(veh, 0)
                            SetVehicleLightMultiplier(veh, 1.0)
                        end
                    end
                end
            end
        end
	end
end)