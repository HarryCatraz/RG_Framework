Citizen.CreateThread(function()
    local playerped = GetPlayerPed(-1)
    local playerCoords =  GetEntityCoords(playerped, true)
    while true do
        Citizen.Wait(0)
        for i = 1, #Config.DrugDealerLocations do
        local interactDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.DrugDealerLocations[i].x, Config.DrugDealerLocations[i].y, Config.DrugDealerLocations[i].z, true)
            if interactDistance < 5.0 then

                if Config.DrugDealerLocations[i].type == "weed" then
                    DrawMarker(27, Config.DrugDealerLocations[i].x, Config.DrugDealerLocations[i].y, Config.DrugDealerLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Sell Your Weed")
                    if IsControlJustPressed(0, 38) then
                        -- Handle Inventory and Money here
                    end
                end

                if Config.DrugDealerLocations[i].type == "cocaine" then
                    DrawMarker(27, Config.DrugDealerLocations[i].x, Config.DrugDealerLocations[i].y, Config.DrugDealerLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Sell Your Cocaine")
                    if IsControlJustPressed(0, 38) then
                        -- Handle Inventory and Money here
                    end
                end

                if Config.DrugDealerLocations[i].type == "opium" then
                    DrawMarker(27, Config.DrugDealerLocations[i].x, Config.DrugDealerLocations[i].y, Config.DrugDealerLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Sell Your Opium")
                    if IsControlJustPressed(0, 38) then
                        -- Handle Inventory and Money here
                    end
                end
            end
        end
    end
end)