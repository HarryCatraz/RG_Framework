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
Config.medicWhitelisting = 0 -- Default medic whitelisting, will get overridden by data once the player has synced their data

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
    {title="Vehicle Shop", colour=0, id=326, -33.777, y = -1102.021, z = 25.422}
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

-- Medic System Settings --
Config.Hospitals = {
	{ x = 342.53, y = -1397.81, z = 32.51}, -- Strawberry
	{ x = -498.31, y = -335.8, z = 34.5}, -- Rockford Hills One
	{ x = -448.3, y = -340.9, z = 34.5}, -- Rockford Hills Two
	{ x = 1838.88, y = 3673.34, z = 34.28}, -- Sandy Shore Medical Centre
	{ x = 358.74, y = -588.94, z = 28.8}, -- Pillbox Lower
	{ x = 298.62, y = -584.55, z = 43.26}, -- Pillbox Upper
	{ x = -247.79, y = 6332.21, z = 32.43}, -- Paleto Care Centre
	{ x = -676.86, y = 312.92, z = 83.08}, -- West Vinewood Medical Tower
    { x = 1151.08, y = -1529.86, z = 35.37}, -- El Burro Hospital
    { x = -874.88, y = -309.15, z = 39.53} -- Rockford Hills
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
Config.RobableStoreLocations = {
    {x = 49.4187, y = 2778.793 , z = 58.043},
    {x = 263.894, y = 2606.463 , z = 44.983},
    {x = 1039.958, y = 2671.134 , z = 39.550},
    {x = 1207.260, y = 2660.175 , z = 37.899},
    {x = 2539.685, y = 2594.192 , z = 37.944},
    {x = 2679.858, y = 3263.946 , z = 55.240},
    {x = 1687.156, y = 4929.392 , z = 42.078},
    {x = 1701.314, y = 6416.028 , z = 32.763},
    {x = 179.857, y = 6602.839 , z = 31.868},
    {x = -94.4619, y = 6419.594 , z = 31.489},
    {x = -2554.996, y = 2334.40 , z = 33.078},
    {x = -1800.375, y = 803.661 , z = 38.651},
    {x = -1437.622, y = -276.747 , z = 46.207},
    {x = -2096.243, y = -320.286 , z = 13.168},
    {x = -724.619, y = -935.1631 , z = 19.213},
    {x = -526.019, y = -1211.003 , z = 18.184},
    {x = -70.2148, y = -1761.792 , z = 29.534},
    {x = 265.648, y = -1261.309 , z = 29.292},
    {x = 819.653, y = -1028.846 , z = 26.403},
    {x = 1208.951, y = -1402.56 , z = 35.224},
    {x = 1181.381, y = -330.847 , z = 69.316},
    {x = 620.843, y = 269.100 , z = 03.089},
    {x = 2581.321, y = 362.039 , z = 108.468}
}
Config.RobableBankLocations = {
	{x = -2964.76, y = 482.658, z = 15.7068},
	{x = 260.2324, y = 205.886, z = 106.284},
	{x = 150.061, y = -1039.99, z = 29.3778},
    {x = -1213.57, y = -328.829, z = 37.7908},
    {x = -109.453, y = 6464.05, z = 31.6267}
}

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
Config.ComaDuration = 5 -- Minutes A Player Can Spend In A Coma
Config.ComaThreshold = 120 -- Health that the player drops below to enter a coma
Config.IsInComa = false -- Do Not touch

-- Death Settings --
Config.DebugLocationX = 3153.9 
Config.DebugLocationY = 1281.33
Config.DebugLocationZ = 3.17

-- Evidence Settings --
Config.EvidenceModel = "prop_drug_package"
Config.EvidenceDeleteDelay = 15 -- Deletes evidence 15 Minutes after spawning

-- Store Settings --
Config.CashRegisters = {
    "prop_till_01_dam",
    "prop_till_02",
    "prop_till_03",
    "p_till_01_s"
}

-- Virtual Items --
Config.VirtualItems = {
    { name = "Weed (Plant)", buyprice = 10 , sellprice = 5 , amount = 0}, 
    { name = "Weed (Processed)", buyprice = 10 , sellprice = 5 , amount = 0}, 
}