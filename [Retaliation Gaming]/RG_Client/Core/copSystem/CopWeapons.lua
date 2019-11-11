Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerped = GetPlayerPed(-1)
        local playerCoords =  GetEntityCoords(playerped, true)

        if Config.currentJob == "Cop" then
            for i = 1, #Config.CopWeaponsLocations do

                local dutyDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, Config.CopWeaponsLocations[i].x, Config.CopWeaponsLocations[i].y, Config.CopWeaponsLocations[i].z, true)
                if dutyDistance < 15.0 then

                    DrawMarker(27, Config.CopWeaponsLocations[i].x, Config.CopWeaponsLocations[i].y, Config.CopWeaponsLocations[i].z-0.99, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 125, 0, 125, 255, 0.0, 0.0, 2, false, false, false, false)

                    RG_Notify("done","Press ~b~E~w~ To Open The Cop Weapon Locker")

                    if IsControlJustPressed(0, 38) then
                        TriggerEvent("RG_NUI:OpenMenu", "RG_Menu_CopWeapons")
                    end
                end
            end
        end
        
    end
end)