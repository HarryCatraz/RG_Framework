Config = {}  -- Master dont touch

-- Anti-Cheat Settings --
Config.EnableAntiCheat = true -- Anti-Cheat Master
Config.CheckGodMode = true -- Should the Anti Cheat check GodMod?
Config.CheckMaxHealth = true -- Should the Anti Cheat check the players health
Config.CheckHealthRegen = true -- Should the Anti Cheat check the players health regen speed
Config.CheckUnlimitedAmmo = true -- Should the Anti Cheat check check to see if the player has unlimited ammo
Config.CheckInvisible = true -- Should the Anti Cheat check if the player is invisible

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
    {
        ['ToggleDutyPoint'] = { ['x'] = 447.24, ['y'] = -975.55, ['z'] = 30.69}
        -- Add all PDs here
    }
}

-- Gun Shop Settings -- 
Config.GunShopLocations = {
    --['Ammunation'] = { ['x'] = 662.1, ['y'] = -935.3, ['z'] = 20.8},
    --['Ammunation'] = { ['x'] = 810.2, ['y'] = -2157.3, ['z'] = 28.6},
    --['Ammunation'] = { ['x'] = 1693.4, ['y'] = 3759.5, ['z'] = 33.7},
    --['Ammunation'] = { ['x'] = -330.2, ['y'] = 6083.8, ['z'] = 30.4},
    --['Ammunation'] = { ['x'] = 252.3, ['y'] = -50.0, ['z'] = 68.9},
    ['Ammunation'] = { ['x'] = 22.0, ['y'] = -1107.2, ['z'] = 28.8}
    --['Ammunation'] = { ['x'] = 2567.6, ['y'] = 294.3, ['z'] = 107.7},
    --['Ammunation'] = { ['x'] = -1117.5, ['y'] = 2698.6, ['z'] = 17.5},
    --['Ammunation'] = { ['x'] = 842.4, ['y'] = -1033.4, ['z'] = 27.1},
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