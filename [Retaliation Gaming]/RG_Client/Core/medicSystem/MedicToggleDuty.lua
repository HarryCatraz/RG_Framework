Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        local playerCoords =  GetEntityCoords(playerped, true)
        if Config.currentJob ~= "Medic" then
            for i = 1, #Config.Hospitals do
                local dutyDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.Hospitals[i].x, Config.Hospitals[i].y, Config.Hospitals[i].z, true)
                if Config.medicWhitelisting == 1 then
                    if dutyDistance < 4.1 then
                        DrawMarker(27, Config.Hospitals[i].x, Config.Hospitals[i].y, Config.Hospitals[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 125, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                        RG_Notify("done","Press ~b~E~w~ To Go On Duty")
                        if IsControlJustPressed(0, 38) then
                            RG_Notify("done","You have gone off duty")
                            Config.currentJob = "Medic"
                        end
                    end
                end
            end
        elseif Config.currentJob == "Medic" then
            for i = 1, #Config.Hospitals do
                local dutyDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.Hospitals[i].x, Config.Hospitals[i].y, Config.Hospitals[i].z, true)
                if dutyDistance < 4.1 then
                    DrawMarker(27, Config.Hospitals[i].x, Config.Hospitals[i].y, Config.Hospitals[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 125, 0, 125, 255, 0.0, 0.0, 2, false, false, false, false)
                    RG_Notify("done","Press ~b~E~w~ To Go Off Duty")
                    if IsControlJustPressed(0, 38) then
                        RG_Notify("done","You have gone off duty")
                        Config.currentJob = "Unemployed"
                    end
                end
            end
        end  
    end
end)