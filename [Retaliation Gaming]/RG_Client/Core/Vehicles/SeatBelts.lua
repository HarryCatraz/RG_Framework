-- SEATBELT PARAMETERS
local seatbeltInput = 311                   -- Toggle seatbelt on/off with K or DPAD down (controller)
local seatbeltPlaySound = true              -- Play seatbelt sound
local seatbeltDisableExit = true            -- Disable vehicle exit when seatbelt is enabled
local seatbeltEjectSpeed = 45.0             -- Speed threshold to eject player (MPH)
local seatbeltEjectAccel = 100.0            -- Acceleration threshold to eject player (G's)
local seatbeltColorOn = {160, 255, 160}     -- Color used when seatbelt is on
local seatbeltColorOff = {255, 96, 96}      -- Color used when seatbelt is off

Citizen.CreateThread(function()
    local currSpeed = 0.0
    local prevVelocity = {x = 0.0, y = 0.0, z = 0.0}
    local seatbeltIsOn = false
    local pedInVeh = false
    while true do

        -- Loop forever and update HUD every frame
        Citizen.Wait(0)

        -- Get player PED, position and vehicle and save to locals
        local player = GetPlayerPed(-1)
        local position = GetEntityCoords(player)
        local vehicle = GetVehiclePedIsIn(player, false)

        -- Set vehicle states
        if IsPedInAnyVehicle(player, false) then
            pedInVeh = true
        else
            pedInVeh = false
            seatbeltIsOn = false
        end

        local vehicleClass = GetVehicleClass(vehicle)

        if pedInVeh and GetIsVehicleEngineRunning(vehicle) and vehicleClass ~= 13 then
            
            local prevSpeed = currSpeed

            currSpeed = GetEntitySpeed(vehicle)

            SetPedConfigFlag(PlayerPedId(), 32, true)

            if IsControlJustReleased(0, seatbeltInput) and (GetLastInputMethod(0)) and vehicleClass ~= 8 then

                        -- Toggle seatbelt status and play sound when enabled

                        seatbeltIsOn = not seatbeltIsOn

                        if seatbeltPlaySound then

                            PlaySoundFrontend(-1, "Faster_Click", "RESPAWN_ONLINE_SOUNDSET", 1)

                        end


                    if not seatbeltIsOn then

                        -- Eject PED when moving forward, vehicle was going over 45 MPH and acceleration over 100 G's

                        local vehIsMovingFwd = GetEntitySpeedVector(vehicle, true).y > 1.0

                        local vehAcc = (prevSpeed - currSpeed) / GetFrameTime()

                        if (vehIsMovingFwd and (prevSpeed > (seatbeltEjectSpeed/2.237)) and (vehAcc > (seatbeltEjectAccel*9.81))) then

                            SetEntityCoords(player, position.x, position.y, position.z - 0.47, true, true, true)

                            SetEntityVelocity(player, prevVelocity.x, prevVelocity.y, prevVelocity.z)

                            Citizen.Wait(1)

                            SetPedToRagdoll(player, 1000, 1000, 0, 0, 0, 0)

                        else

                            -- Update previous velocity for ejecting player

                            prevVelocity = GetEntityVelocity(vehicle)

                        end

                    elseif seatbeltDisableExit then

                        -- Disable vehicle exit when seatbelt is on

                        DisableControlAction(0, 75)

                    end
                end
            end
        end
end)