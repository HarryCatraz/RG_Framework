local crouched = false
Citizen.CreateThread( function()
    while true do 
        Citizen.Wait( 1 )
        local ped = GetPlayerPed( -1 )
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            DisableControlAction( 0, 36, true ) -- INPUT_DUCK  
            if ( not IsPauseMenuActive() ) then 
                if ( IsDisabledControlJustPressed( 0, 36 ) ) then 
                    RequestAnimSet( "move_ped_crouched" )
                    while ( not HasAnimSetLoaded( "move_ped_crouched" ) ) do 
                        Citizen.Wait( 100 )
                    end 
                    if ( crouched == true ) then 
                        ResetPedMovementClipset( ped, 0 )
                        crouched = false 
                    elseif ( crouched == false ) then
                        SetPedMovementClipset( ped, "move_ped_crouched", 0.25 )
                        crouched = true 
                    end 
                end
            end 
        end 
    end
end )

local handsup = false
Citizen.CreateThread( function()
    while true do 
        Citizen.Wait( 1 )
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