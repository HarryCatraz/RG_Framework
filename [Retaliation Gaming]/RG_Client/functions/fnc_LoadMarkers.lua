--[[ local maxDistance = 15.0
local interactDistance = 3.0
local markersTable = {
    {X = 454.37634277344,Y = -991.6259765625,Z = 30.689609527588, markertype = garage}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        for k, _ in pairs(markersTable) do
            local distance = Vdist(pedX, pedY, pedZ, markersTable[k].X, markersTable[k].Y, markersTable[k].Z)
            if distance <= maxDistance then
                DrawMarker(1, markersTable[k].X, markersTable[k].Y, markersTable[k].Z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 255, 0, 0, 0, 0, nil, nil, 0)
                if distance <= interactDistance then
                    SetNotificationTextEntry("STRING")
                    AddTextComponentString("<b>Press E To Interact</b>")
                    DrawNotification(true, false)
                    if IsControlJustPressed(1, 38) then -- E
                        if (markersTable[k].markertype) == garage then
    
                        end
                    end
                end
            end
        end
    end
end) ]]