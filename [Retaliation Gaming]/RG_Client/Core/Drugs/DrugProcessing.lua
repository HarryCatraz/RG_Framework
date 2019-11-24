Citizen.CreateThread(function()
    local playerped = GetPlayerPed(-1)
    local playerCoords =  GetEntityCoords(playerped, true)
    while true do
        Citizen.Wait(0)
        for i = 1, #Config.DrugProcessingLocations do
        local interactDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.DrugProcessingLocations[i].x, Config.DrugProcessingLocations[i].y, Config.DrugProcessingLocations[i].z, true)
            if interactDistance < 5.0 then

                if Config.DrugProcessingLocations[i].type == "weed" then
                    DrawMarker(27, Config.DrugProcessingLocations[i].x, Config.DrugProcessingLocations[i].y, Config.DrugProcessingLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Process Your Weed")
                    if IsControlJustPressed(0, 38) then
                        -- Handle Inventory here
                    end
                end

                if Config.DrugProcessingLocations[i].type == "cocaine" then
                    DrawMarker(27, Config.DrugProcessingLocations[i].x, Config.DrugProcessingLocations[i].y, Config.DrugProcessingLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Process Your Cocaine")
                    if IsControlJustPressed(0, 38) then
                        -- Handle Inventory here
                    end
                end

                if Config.DrugProcessingLocations[i].type == "opium" then
                    DrawMarker(27, Config.DrugProcessingLocations[i].x, Config.DrugProcessingLocations[i].y, Config.DrugProcessingLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Process Your Opium")
                    if IsControlJustPressed(0, 38) then
                        -- Handle Inventory here
                    end
                end
            end
        end
    end
end)