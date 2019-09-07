Citizen.CreateThread(function()         

    local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))

    while true do
        Citizen.Wait(0)
        if (Config.currentJob == "Cop") then
            copMarker.blip = AddBlipForCoord(pedX, pedY, pedZ)
            SetBlipSprite(copMarker.blip, 1)
            SetBlipScale(copMarker.blip, 0.9)
            SetBlipColour(copMarker.blip, 26)
            SetBlipAsShortRange(copMarker.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Law Enforcement Officer")
            EndTextCommandSetBlipName(copMarker.blip)
            SetBlipDisplay(copMarker.blip, 4)
        else
            SetBlipDisplay(copMarker.blip, 0)
        end
    end
end)