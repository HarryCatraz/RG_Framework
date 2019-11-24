Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local plyPos = GetEntityCoords(GetPlayerPed(PlayerId()), false)
        local prop = GetClosestObjectOfType(plyPos.x, plyPos.y, plyPos.z, 100.0, GetHashKey(Config.EvidenceModel), 0, 0, 0)
        local propCoords = GetEntityCoords(prop, false)
        if prop ~= 0 then
            local dist = Vdist(plyPos.x, plyPos.y, plyPos.z, propCoords.x, propCoords.y, propCoords.z)
            if dist <= 2.0 then
                if Config.currentJob ~= "Cop" then
                    DrawSpecialText("Press [~g~E~s~] to destroy evidence")
                    if IsControlJustPressed(0, 38) then
                        G_Notify("done","You've Destroyed The Evidence")
                        DeleteObject(prop)
                    end
                else
                    DrawSpecialText("Press [~g~E~s~] to gather evidence")
                    if IsControlJustPressed(0, 38) then
                        G_Notify("done","You've Gathered The Evidence")
                        DeleteObject(prop)
                    end
                end
            end
		end
	end
end)

function RG_CreateEvidence(victim, suspect, crime)
    victimCoords = GetEntityCoords(victim, false)
    prop = CreateObject(GetHashKey(Config.EvidenceModel), victimCoords.x, victimCoords.y, victimCoords.z, 1, true, true)
    PlaceObjectOnGroundProperly(prop)
    Citizen.Wait(Config.EvidenceDeleteDelay * 60000)
    RG_DestroyEvidence(prop)
end