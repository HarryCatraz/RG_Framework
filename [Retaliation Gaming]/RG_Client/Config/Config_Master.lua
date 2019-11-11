-- Threat Level Settings -- 
Config.Threatlevel = "Green" -- Default Threat Level

-- AI Settings --
Config.AIMultiplier = 0.4 -- Amount of AI to spawn, max 1
Config.EnableDispatch = false -- Enable AI emergency services dispatching to calls

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

-- Major Crime Settings --
Config.recentmajorcrime = false -- Has there been a major crime within the last 30 minutes
    
-- Vehicle Shop Settings --
Config.VehicleShops = {
    {title="Vehicle Shop", colour=0, id=326, -33.777, y = -1102.021, z = 25.422}
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
    {title="Combat Pistol", hash =  "WEAPON_COMBATPISTOL", price=0, spawnAmmo = 30},
    {title="SNS Pistol", hash =  "WEAPON_SNSPISTOL", price=0, spawnAmmo = 30},
    {title="Heavy Pistol", hash =  "WEAPON_HEAVYPISTOL", price=0, spawnAmmo = 30}
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
	{id = 1, VoiceName = "HOOKER_LEAVES_ANGRY", modelHash = "s_f_y_hooker_01"}
}

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
    { name = "Weed (Processed)", buyprice = 10 , sellprice = 5 , amount = 0}
}