Config = {}  -- Master dont touch

-- Anti-Cheat Settings --
Config.EnableAntiCheat = true -- Anti-Cheat Master
Config.CheckGodMode = true -- Should the Anti Cheat check GodMod?
Config.CheckMaxHealth = true -- Should the Anti Cheat check the players health
Config.CheckHealthRegen = true -- Should the Anti Cheat check the players health regen speed
Config.CheckUnlimitedAmmo = true -- Should the Anti Cheat check check to see if the player has unlimited ammo
Config.CheckInvisible = true -- Should the Anti Cheat check if the player is invisible
Config.AFKKickTime = 900 -- Seconds the player is AFK until they are kicked

-- Admin Settings --
Config.staffWhitelisting = 0 -- Sets the staff whitelisting to 0, will get overridden by the database once the player has synced their data

-- Init Variables --
Config.ID = "" -- DO NOT TOUCH
Config.Name = "" -- DO NOT TOUCH

-- Threat Level Settings -- 
Config.Threatlevel = "Green" -- Default Threat Level

-- AI Settings --
Config.AIMultiplier = 0.4 -- Amount of AI to spawn, max 1
Config.EnableDispatch = false -- Enable AI emergency services dispatching to calls

-- Job Settings --
Config.currentJob = "Unemployed" -- Default job, will get overridden by data once the player has synced their data
Config.copWhitelisting = 0 -- Default cop whitelisting, will get overridden by data once the player has synced their data

-- Database Settings --
Config.syncDelay = 300 -- 5 Minutes, How often the the players data will get sent to the database

-- Paycheck Settings --
Config.paycheckDelay = 300 --5 Minutes, How long the player waits to get their paycheck

-- Hunger and Thirst Settings --
Config.BasicNeedsRate = 10 -- 1% every 10 seconds
Config.EnableBasicNeedsHUD = true -- Enables the Piss and Shit system's HUD
Config.hunger = 2 -- Default players hunger, will get overridden by data once the player has synced their data
Config.thirst = 2 -- Default players thirst, will get overridden by data once the player has synced their data

-- Shit and Piss Settings --
Config.relifRate = 10 -- 1% every 10 seconds
Config.EnableRelifHUD = true -- Enables the Hunger and Thirsts system's HUD
Config.pissrelif = 2 -- Default players Piss Relif, will get overridden by data once the player has synced their data
Config.shitrelif = 2 -- Default players Shit Relif, will get overridden by data once the player has synced their data

-- Economy Settings --
Config.money = 5 -- Default players money, will get overridden by data once the player has synced their data
Config.bank = 5 -- Default players bank amount, will get overridden by data once the player has synced their data
Config.paycheck = 5000 -- Default players paycheck amount, will get overridden by job system

-- Major Crime Settings --
Config.recentmajorcrime = false -- Has there been a major crime within the last 30 minutes
    
-- Vehicle Shop Settings --
Config.VehicleShops = {
    {
        {title="Vehicle Shop", colour=1, id=361, x=49.4187, y=2778.793, z=58.043}
    }
}

-- Police System Settings --
Config.PoliceStations = {
	{ x = 447.24, y = -975.55, z = 30.69}, -- Mission Row Captains Office
	{ x = 826.94, y = -1289.42, z=  28.24}, -- La Mesa Police Porch
	{ x = -448.9, y = 6011.75, z =  31.72}, -- Paleto Station Front Desk
	{ x = 1852.47, y = 3689.62, z =  34.27}, -- Sandy Shore Station Front Desk
	{ x = 639.06, y = 1.59, z =  82.79}, -- Vinewood PD Front Doors
	{ x = -1108.53, y = -845.32, z =  19.32}, -- Vespucci PD Front Doors
	{ x = 360.63, y = -1584.16, z =  29.29}, -- Rancho PD Front Doors
	{ x = -561.22, y = -132.86, z =  38.05}, -- Rockford Hills PD Front Doors
	{ x = 387.02, y = 792.05, z =  187.69} -- Ranger Station Front Doors
}

-- Gun Shop Settings -- 
Config.GunShopLocations = {
    { x  = 662.1, y = -935.3, z = 20.8},
    { x  = 810.2, y = -2157.3, z = 28.6},
    { x  = 1693.4, y = 3759.5, z = 33.7},
    { x  = -330.2, y = 6083.8, z = 30.4},
    { x  = 252.3, y = -50.0, z = 68.9},
    { x  = 21.62, y = -1107.48, z = 29.8},
    { x  = 2567.6, y = 294.3, z = 107.7},
    { x  = -1117.5, y = 2698.6, z = 17.5},
    { x  = 842.4, y = -1033.4, z = 27.1}
}

Config.GunShopWeapons = {
    {title="Pistol", hash = "WEAPON_PISTOL", price=0, spawnAmmo = 30},
    {title="Combat Pistol", "WEAPON_COMBATPISTOL", price=0, spawnAmmo = 30},
    {title="SNS Pistol", "WEAPON_SNSPISTOL", price=0, spawnAmmo = 30},
    {title="Heavy Pistol", "WEAPON_HEAVYPISTOL", price=0, spawnAmmo = 30},
}

-- Major Crime Settings -- 
Config.BankSpawnMoneyDelay = 10 -- How long it takes for the money to spawn at the bank (Minutes)
Config.MajorCrimeCooldown = 30 -- The cooldown time for a major crime
Config.BankRobberyMoneyRange = { lower = 200000, higher = 500000} -- Picks random number between the two values for the bank money to spawn

-- Robbery Settings --
Config.StoreSpawnMoneyDelay = 10 -- How long it takes for the money to spawn at the store robbery (Minutes)
Config.StoreRobberyMoneyRange = { lower = 20000, higher = 50000} -- Picks random number between the two values for the store money to spawn

-- Vehicle Settings --
Config.HornLights = true -- Master Toggle for horn lights
Config.EmergencyHornLights = true -- Restrict horn lights to emergency vehicles only
Config.HornLightsStrength = 4.0 -- Horn Lights strength, max is 12.0

-- Hooker Settings --
Config.EnableHookers = true
Config.HookerLocations = {
    {x = 129.63, y = -1060.41, z = 29.19, heading = 156.4} -- Add Hooker Locations Here
}
Config.Hookers = {
	{id = 1, VoiceName = "HOOKER_LEAVES_ANGRY", modelHash = "s_f_y_hooker_01"}, 
}
-- Coma Settings --
Config.ComaDuration = 5 -- Max Minutes A Player Can Spend In A Coma
Config.ComaThreshold = 120 -- Health that the player drops below to enter a coma
Config.IsInComa = false -- Do Not touch