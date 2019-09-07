Citizen.CreateThread(function()
    for _, info in pairs(Config.VehicleShops.VehicleShopBlips) do
      VehShopBlip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(VehShopBlip, info.id)
      SetBlipDisplay(VehShopBlip, 4)
      SetBlipScale(VehShopBlip, 0.9)
      SetBlipColour(VehShopBlip, info.colour)
      SetBlipAsShortRange(VehShopBlip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(VehShopBlip)
    end
end)