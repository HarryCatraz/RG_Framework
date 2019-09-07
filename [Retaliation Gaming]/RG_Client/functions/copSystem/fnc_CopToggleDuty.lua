Citizen.CreateThread(function()

    -- Call Cop SQL to get if is cop

    local stations = 
    {
        {-445.202, 6014.36, 31.7164},
        {1854.21, 3685.51, 34.2671},
        {642.001, 0.638351, 82.7869},
        {-1110.87, -845.09, 19.32},
        {360.624, -1584.47, 29.2919},
        {825.987, -1290.03, 28.2407},
        {456.76, -984.73, 82.21},
        {-551.68, -142.81, 37.9},
        {385.29, 786.88, 187.3}
    }
    while true do 
        Citizen.Wait(0)
        for i = 1, #stations do
            stationsCoords = stations[i]
            if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), stationsCoords[1], stationsCoords[2], stationsCoords[3], true ) < 20) then
                if(IsControlJustPressed(1, 46)) then
                    if (Config.currentJob == "Cop") then
                            SetTextComponentFormat("STRING")
                            AddTextComponentString("You've gone off duty")
                            DisplayHelpTextFromStringLabel(0, 0, 1, -1)
                            DrawNotification(false, true)
                            Config.currentJob = "Unemployed"
                    else
                            SetPedArmour(GetPlayerPed(-1), 100)
                            SetTextComponentFormat("STRING")
                            AddTextComponentString("You are now on duty")
                            DisplayHelpTextFromStringLabel(0, 0, 1, -1)
                            DrawNotification(false, true)
                            Config.currentJob = "Cop"
                    end
                end
            end
        end
    end
end)