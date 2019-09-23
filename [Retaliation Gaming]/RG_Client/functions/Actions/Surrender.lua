local handsup = false
Citizen.CreateThread( function()
    while true do 
        Citizen.Wait(0)
        local ped = GetPlayerPed( -1 )
        if (DoesEntityExist(ped) and not IsEntityDead(ped)) then 
            DisableControlAction( 0, 73, true) -- Stop player from using X
            if (not IsPauseMenuActive()) then 
                if (IsDisabledControlJustPressed(0, 73)) then 
                    RequestAnimDict('random@mugging3')
                    while (not HasAnimDictLoaded('random@mugging3')) do 
                        Citizen.Wait(100)
                    end 
                    if (handsup == true) then 
                        ClearPedTasks(GetPlayerPed(-1))
                        handsup = false 
                    elseif (handsup == false) then
                        TaskPlayAnim(ped, 'random@mugging3', 'handsup_standing_base', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                        handsup = true 
                    end 
                end
            end 
        end 
    end
end)