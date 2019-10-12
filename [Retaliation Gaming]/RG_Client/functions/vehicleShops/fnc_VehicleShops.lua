Citizen.CreateThread(function()
  for i = 1, #Config.VehicleShops do
      VehShopBlip = AddBlipForCoord(Config.VehicleShops[i].x, Config.VehicleShops[i].y, Config.VehicleShops[i].z)
      SetBlipSprite(VehShopBlip, Config.VehicleShops[i].id)
      SetBlipDisplay(VehShopBlip, 4)
      SetBlipScale(VehShopBlip, 0.8)
      SetBlipColour(VehShopBlip, Config.VehicleShops[i].colour)
      SetBlipAsShortRange(VehShopBlip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Config.VehicleShops[i].title)
      EndTextCommandSetBlipName(VehShopBlip)
  end
end)