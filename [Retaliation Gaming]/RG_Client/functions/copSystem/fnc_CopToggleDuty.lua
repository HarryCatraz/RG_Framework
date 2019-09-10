local ToggleDutyPoints = {
    --{X = -445.202,Y = 6014.36,Z = 31.7164},
    --{X = 1854.21,Y = 3685.51,Z = 34.2671},
    --{X = 642.001,Y = 0.638351,Z = 82.7869},
    --{X = -1110.87,Y = -845.09,Z = 19.32},
    --{X = 360.624,Y = -1584.47,Z = 29.2919},
    --{X = 825.987,Y = -1290.03,Z = 28.2407},
    {X = 454.37634277344,Y = 991.6259765625,Z = 30.689609527588},
    --{X = -551.68,Y = -142.81,Z = 37.9},
    --{X = 385.29,Y = 786.88,Z = 187.3}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        for k, _ in pairs(ToggleDutyPoints) do
            local distance = Vdist(pedX, pedY, pedZ, ToggleDutyPoints[k].X, ToggleDutyPoints[k].Y, ToggleDutyPoints[k].Z)
            if distance <= 15.0 then
                DrawMarker(1, ToggleDutyPoints[k].X, ToggleDutyPoints[k].Y, ToggleDutyPoints[k].Z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 255, 0, 0, 0, 0, nil, nil, 0)
                if distance <= 3.0 then
                    RG_Notify("Press ~b~B~w~ to toggle duty")
                    if IsControlJustPressed(1, 38) then -- E
                        --[[ if (Config.currentJob == "Cop") then
                                RG_Notify("You've gone off duty")
                                Config.currentJob = "Unemployed"
                        else
                                SetPedArmour(GetPlayerPed(-1), 100)
                                RG_Notify("You've gone on duty")
                                Config.currentJob = "Cop"
                        end ]]
                    end
                end
            end
        end
    end
end)