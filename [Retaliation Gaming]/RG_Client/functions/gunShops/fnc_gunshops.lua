Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        local playerCoords =  GetEntityCoords(playerped, true)
        for i = 1, #Config.GunShopLocations do
            local PointX = Config.GunShopLocations[i].Ammunation.x
            local PointY = Config.GunShopLocations[i].Ammunation.y
            local PointZ = Config.GunShopLocations[i].Ammunation.z
            local InteractDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, PointX, PointY, PointZ, true)
                if InteractDistance < 5 then
                    DrawMarker(27, PointX, PointY, PointZ-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 180, 180, 180, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("Press ~b~E~w~ To Open The Gun Shop")
                    if IsControlJustPressed(0, 38) then
                        GunMenu:Visible(not GunMenu:Visible())
                    end
                end
        end      
    end
end)