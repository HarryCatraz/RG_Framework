RegisterCommand("eat", function(source, args, rawCommand)
    handle_eat() 
end, false)

RegisterCommand("drink", function(source, args, rawCommand)
    handle_drink() 
end, false)

-- Hunger and Thirst Incrementation
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(Config.BasicNeedsRate * 1000) -- Delay in incrementation in milliseconds
        Config.hunger = Config.hunger + 1
        Config.thirst = Config.thirst + 1
	end
end)

-- Handle Notfications
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if Config.hunger == 100 then
			RG_Alert("You need some food!")
		end
		if Config.thirst == 100 then
			RG_Alert("You need a drink!")
		end
		if Config.hunger > 119 then
		    RG_Alert("You have passed out (Hunger)!")
			passout()
		end
		if Config.thirst > 119 then
		    RG_Alert("You have passed out (Thirst)!")
			passout()
		end
	end
end)

-- Handle HUD
Citizen.CreateThread(function()
    while true do
    	Citizen.Wait(0)
    	if Config.EnableBasicNeedsHUD then
	        textHunger(Config.hunger)
	        textThirst(Config.thirst)
	    end
    end
end)

function handle_eat()
	-- Add Anim here
	RG_Alert("You have eaten some food!")
	Config.hunger = 0
	return
end

function handle_drink()
	-- Add Anim here
	RG_Alert("You have had a drink!")
	Config.thirst = 0
	return
end

function passout()
	-- Ragdoll or passout anim here
	return
end

function textHunger(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Hunger: " ..content.."%")
    DrawText(0.88,0.65)
end

function textThirst(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Thirst: " ..content.."%")
	DrawText(0.88,0.68)
end