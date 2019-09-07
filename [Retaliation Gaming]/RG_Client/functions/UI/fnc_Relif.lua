RegisterCommand("piss", function(source, args, rawCommand)
    handle_piss() 
end, false)

RegisterCommand("shit", function(source, args, rawCommand)
    handle_shit() 
end, false)

-- Piss and Shit Incrementation
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(Config.relifRate * 1000) -- Delay in incrementation in milliseconds
        Config.pissrelif = Config.pissrelif + 1
        Config.shitrelif = Config.shitrelif + 1
	end
end)

-- Handle Notfications
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if Config.pissrelif == 100 then
			RG_Alert("You need a piss!")
		end
		if Config.shitrelif == 100 then
			RG_Alert("You need a shit!")
		end
		if Config.pissrelif > 119 then
		    RG_Alert("You have pissed yourself!")
			handle_piss()
		end
		if Config.shitrelif > 119 then
		    RG_Alert("You have shit yourself!")
			handle_shit()
		end
	end
end)

-- Handle HUD
Citizen.CreateThread(function()
    while true do
    	Citizen.Wait(0)
    	if Config.EnableRelifHUD then
	        textPiss(Config.pissrelif)
	        textShit(Config.shitrelif)
	    end
    end
end)

function handle_shit()
    local ped = GetPlayerPed(-1)
    if not IsEntityPlayingAnim(ped, "switch@trevor@on_toilet", "trev_on_toilet_exit", 3) then
        TaskPlayAnim(ped, "switch@trevor@on_toilet", "trev_on_toilet_exit", 8.0, -8, -1, 49, 0, 0, 0, 0)
        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
		RG_Alert("You have taken a Shit!")
        Wait(8000)
        ClearPedTasksImmediately(ped)
    end
	Config.shitrelif = 0
	return
end

function handle_piss()
    local ped = GetPlayerPed(-1)
    if not IsEntityPlayingAnim(ped, "missbigscore1switch_trevor_piss", "piss_loop", 3) then
        TaskPlayAnim(ped, "missbigscore1switch_trevor_piss", "piss_loop", 8.0, -8, -1, 49, 0, 0, 0, 0)
        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
		RG_Alert("You have taken a piss!")
        Wait(8000)
        ClearPedTasksImmediately(ped)
    end
	Config.pissrelif = 0
	return
end

function textPiss(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Bladder (Piss): " ..content.."%")
    DrawText(0.88,0.71)
end

function textShit(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Bladder (Shit): " ..content.."%")
    DrawText(0.88,0.74)
end