function PrismRP_DoJ_SpawnVehicle(selectedEMSVehicle)
	local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
    local vehiclehash = GetHashKey(selectedEMSVehicle)
    RequestModel(vehiclehash)
	while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(50)
    end
    CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId())+90, 1, 0)
end

function PrismRP_DoJ_SpawnWeapon(i)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(i), 150, false, false)
end

function PrismRP_DoJ_Handcuff(closestplayer)
	local ped = PlayerPedId(closestplayer)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end
    if cuffed then
    	ClearPedTasks(ped)
        SetEnableHandcuffs(ped, false)
        UncuffPed(ped)
        if GetEntityModel(ped) == femaleHash then
            SetPedComponentVariation(ped, 7, prevFemaleVariation, 0, 0)
        elseif GetEntityModel(ped) == maleHash then -- mp male
            SetPedComponentVariation(ped, 7, prevMaleVariation, 0, 0)
        end
    else
        if GetEntityModel(ped) == femaleHash then -- mp female
            prevFemaleVariation = GetPedDrawableVariation(ped, 7)
            SetPedComponentVariation(ped, 7, 25, 0, 0)
        elseif GetEntityModel(ped) == maleHash then -- mp male
            prevMaleVariation = GetPedDrawableVariation(ped, 7)
            SetPedComponentVariation(ped, 7, 41, 0, 0)
        end
        SetEnableHandcuffs(ped, true)
		TaskPlayAnim(ped, dict, anim, 8.0, -8, -1, flags, 0, 0, 0, 0)
    end
    cuffed = not cuffed
    changed = true
end

function PrismRP_DoJ_Escort(bool)

end

function PrismRP_DoJ_PlaceSpikes()

end

function PrismRP_DoJ_RemoveSpikes()

end

function PrismRP_DoJ_PullOutOfVehicle()

end

function PrismRP_DoJ_PutInVehicle()

end

function PrismRP_DoJ_CPR()

end

function PrismRP_DoJ_GetClosestPlayer()
	local players, closestDistance, closestPlayer = PrismRP_DoJ_GetPlayers(), -1, -1
	local coords, usePlayerPed = coords, false
	local playerPed, playerId = PlayerPedId(), PlayerId()
	if coords then
		coords = vector3(coords.x, coords.y, coords.z)
	else
		usePlayerPed = true
		coords = GetEntityCoords(playerPed)
	end
	for i=1, #players, 1 do
		local target = GetPlayerPed(players[i])
		if not usePlayerPed or (usePlayerPed and players[i] ~= playerId) then
			local targetCoords = GetEntityCoords(target)
			local distance = #(coords - targetCoords)
			if closestDistance == -1 or closestDistance > distance then
				closestPlayer = players[i]
				closestDistance = distance
			end
		end
	end
	return closestPlayer, closestDistance
end

function PrismRP_DoJ_GetPlayers()
	local players = {}
	for _,player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		if DoesEntityExist(ped) then
			table.insert(players, player)
		end
	end
	return players
end