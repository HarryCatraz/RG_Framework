-- https://i.imgur.com/b95jbgV.png
-- https://i.imgur.com/BZ5Mrz0.png

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        local playerCoords =  GetEntityCoords(playerped, true)

        if Config.currentJob == "Unemployed" then
            for i = 1, #Config.PoliceStations do
                local ToggleDutyPointX = Config.PoliceStations[i].ToggleDutyPoint.x
                local ToggleDutyPointY = Config.PoliceStations[i].ToggleDutyPoint.y
                local ToggleDutyPointZ = Config.PoliceStations[i].ToggleDutyPoint.z

                local dutyDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, ToggleDutyPointX, ToggleDutyPointY, ToggleDutyPointZ, true)
                if dutyDistance < 2 then
                    RG_Notify("Press ~b~E~w~ To Go On Duty")

                    if IsControlJustPressed(0, 38) then
                        Config.currentJob = "Cop"
                        RG_Notify("You have gone on duty")
                    end
                end
            end
        elseif Config.currentJob == "Cop" then
            for i = 1, #Config.PoliceStations do
                local ToggleDutyPointX = Config.PoliceStations[i].ToggleDutyPoint.x
                local ToggleDutyPointY = Config.PoliceStations[i].ToggleDutyPoint.y
                local ToggleDutyPointZ = Config.PoliceStations[i].ToggleDutyPoint.z

                local dutyDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, ToggleDutyPointX, ToggleDutyPointY, ToggleDutyPointZ, true)
                if dutyDistance < 2 then
                    RG_Notify("Press ~b~E~w~ To Go Off Duty")

                    if IsControlJustPressed(0, 38) then
                        Config.currentJob = "Unemployed"
                        RG_Notify("You have gone off duty")
                    end
                end
            end
        end
        
    end
end)