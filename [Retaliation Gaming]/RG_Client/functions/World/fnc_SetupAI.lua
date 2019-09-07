Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		SetVehicleDensityMultiplierThisFrame(Config.AIMultiplier)
		SetPedDensityMultiplierThisFrame(Config.AIMultiplier)
		SetRandomVehicleDensityMultiplierThisFrame(Config.AIMultiplier)
		SetParkedVehicleDensityMultiplierThisFrame(Config.AIMultiplier)
		SetScenarioPedDensityMultiplierThisFrame(Config.AIMultiplier, Config.AIMultiplier)
	end
end)