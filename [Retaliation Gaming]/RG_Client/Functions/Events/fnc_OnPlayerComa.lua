local coma_left = Config.ComaDuration * 60
local ragdoll = false
Citizen.CreateThread(function()
    local ped = GetPlayerPed(-1)
    local health = GetEntityHealth(ped)
    while true do
        Citizen.Wait(0)
        if health <= Config.ComaThreshold and Config.IsInComa > 0 then
            if not Config.IsInComa then
                if IsEntityDead(ped) then
                    local x,y,z = table.unpack(GetEntityCoords(ped,true))
                    NetworkResurrectLocalPlayer(x, y, z, true, true, false)
                    Citizen.Wait(0)
                end
                Config.IsInComa = true
                SetEntityHealth(ped, Config.ComaThreshold)
                SetEntityInvincible(ped,true)
                if IsPedSittingInAnyVehicle(ped) then
                    local veh = GetVehiclePedIsIn(ped,false)
                    TaskLeaveVehicle(ped, veh, 4160)
                  end
                ragdoll = true
            else
                if health < Config.ComaThreshold then 
                    SetEntityHealth(ped, Config.ComaThreshold) 
                end
            end
        else
            if Config.IsInComa then -- get out of coma state
                Config.IsInComa = false
                SetEntityInvincible(ped,false)
                ragdoll = false
                if coma_left <= 0 then -- get out of coma by death
                    SetEntityHealth(ped, 0)
                end
                Citizen.Wait(5000)
                coma_left = Config.ComaDuration * 60
            end
        end
    end
end)

Citizen.CreateThread(function() -- coma decrease thread
    while true do 
        Citizen.Wait(1000)
        if Config.IsInComa then
            coma_left = coma_left-1
        end
    end
end)