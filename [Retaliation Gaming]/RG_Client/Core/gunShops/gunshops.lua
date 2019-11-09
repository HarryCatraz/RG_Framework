local canEnterShop = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        local playerCoords =  GetEntityCoords(playerped, true)

        if canEnterShop then
            for i = 1, #Config.GunShopLocations do
                local interactDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.GunShopLocations[i].x, Config.GunShopLocations[i].y, Config.GunShopLocations[i].z, true)
                if interactDistance < 4.1 then
        
                    DrawMarker(27, Config.GunShopLocations[i].x, Config.GunShopLocations[i].y, Config.GunShopLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 125, 0, 99, 99, 0.0, 0.0, 2, false, false, false, false)
        
                    RG_Notify("done","Press ~b~E~w~ To Enter The Gun Shop")
        
                    if IsControlJustPressed(0, 38) then
                        GunMenu:Visible(not GunMenu:Visible())
                        canEnterShop = false
                    end
                end
                canEnterShop = true
            end
        end
    end
end)