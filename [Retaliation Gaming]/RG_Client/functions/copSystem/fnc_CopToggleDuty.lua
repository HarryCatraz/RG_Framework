Citizen.CreateThread(function()
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
        if (Config.copWhitelisting == 1) then
            for i = 1, #stations do
                stationsCoords = stations[i]
                if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), stationsCoords[1], stationsCoords[2], stationsCoords[3], true ) < 3) then
                    RG_Notify("Press ~b~E~w~ to go on duty")
                    if(IsControlJustPressed(1, 46)) then
                        if (Config.currentJob == "Cop") then
                                RG_Notify("You've gone off duty")
                                Config.currentJob = "Unemployed"
                        else
                                SetPedArmour(GetPlayerPed(-1), 100)
                                RG_Notify("You've gone on duty")
                                Config.currentJob = "Cop"
                        end
                    end
                end
            end
        end
    end
end)