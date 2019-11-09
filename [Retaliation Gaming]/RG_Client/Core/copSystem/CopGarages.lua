Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        local playerCoords =  GetEntityCoords(playerped, true)

        if Config.currentJob == "Cop" then
            for i = 1, #Config.CopGarageLocations do

                local dutyDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.CopGarageLocations[i].x, Config.CopGarageLocations[i].y, Config.CopGarageLocations[i].z, true)
                if dutyDistance < 15.0 then

                    DrawMarker(27, Config.CopGarageLocations[i].x, Config.CopGarageLocations[i].y, Config.CopGarageLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 125, 0, 125, 255, 0.0, 0.0, 2, false, false, false, false)

                    RG_Notify("done","Press ~b~E~w~ To Open The Cop Garage")

                    if IsControlJustPressed(0, 38) then
                        TriggerEvent("RG_NUI::OpenMenu", "CopGarage")
                    end
                end
            end
        end
        
    end
end)