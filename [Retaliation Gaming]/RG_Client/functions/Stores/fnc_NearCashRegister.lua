local registers = {
    "prop_till_01_dam",
    "prop_till_02",
    "prop_till_03",
    "p_till_01_s"
}

Citizen.CreateThread(function()
   while true do
		for a = 1, #registers do
			local player = PlayerId()
			local plyPed = GetPlayerPed(player)
			local plyPos = GetEntityCoords(plyPed, false)
            local prop = GetClosestObjectOfType(plyPos.x, plyPos.y, plyPos.z, 100.0, GetHashKey(registers[a]), 0, 0, 0)
            local propCoords = GetEntityCoords(prop, false)
            if prop ~= 0 then
                local dist = Vdist(plyPos.x, plyPos.y, plyPos.z, propCoords.x, propCoords.y, propCoords.z)
                if dist <= 2.0 then
                    DrawSpecialText("Press [~g~E~s~] to enter this store")
                    if (IsControlJustPressed(1, 46)) then
                        -- Open Store UI
                    end
                    if IsPedArmed(ped, 7) then 
                        DrawSpecialText("Press [~g~F~s~] to rob this store")
                        if(IsControlJustPressed(1, 49)) then
                            RobStore()
                        end
                    end
                end
			end
		end
	    Citizen.Wait(0)
   end
end)