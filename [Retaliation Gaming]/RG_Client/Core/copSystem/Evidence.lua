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
                        RG_DestroyEvidence(prop)
                    end
                else
                    DrawSpecialText("Press [~g~E~s~] to gather evidence")
                    if IsControlJustPressed(0, 38) then
                        RG_GatherEvidence(prop)
                    end
                end
            end
		end
	end
end)

function RG_CreateEvidence(victim, suspect, crime)
    local victimCoords = GetEntityCoords(victim, false)
    local prop = CreateObject(GetHashKey(Config.EvidenceModel), victimCoords.x, victimCoords.y, victimCoords.z, 1, true, true)
    PlaceObjectOnGroundProperly(prop)
    Citizen.Wait(Config.EvidenceDeleteDelay * 60000)
    RG_DestroyEvidence(prop)
end

function RG_DestroyEvidence(prop)
    DeleteObject(prop)
end

function RG_GatherEvidence(prop)
    --RG_Notify("Evidence - Victim: " .. victim .. " Suspect: " .. suspect .. " Crime: " .. crime)
    RG_DestroyEvidence(prop)
end
