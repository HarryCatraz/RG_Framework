Config = {}

-- Init Variables DO NOT TOUCH --
Config.ID = ""
Config.Name = ""

-- Threat Level Settings -- 
Config.Threatlevel = ""

-- AI Settings --
Config.AIMultiplier = 0.4
Config.EnableDispatch = false

-- Job Settings --
Config.currentJob = "Unemployed"
Config.copWhitelisting = 0

-- Database Settings --
Config.syncDelay = 300 --5 Minutes

-- Paycheck Settings --
Config.paycheckDelay = 300 --5 Minutes

-- Hunger and Thirst Settings --
Config.BasicNeedsRate = 10 -- 10 Second per %
Config.EnableBasicNeedsHUD = true -- Enables the Piss and Shit system's HUD
Config.hunger = 2
Config.thirst = 2

-- Shit and Piss Settings --
Config.relifRate = 10 -- 10 Second per %
Config.EnableRelifHUD = true -- Enables the Hunger and Thirsts system's HUD
Config.pissrelif = 2
Config.shitrelif = 2

-- Economy Settings --
Config.money = 5
Config.bank = 5
Config.paycheck = 5000

-- Major Crime Settings --
Config.recentmajorcrime = false
    
-- Vehicle Shop Settings --
Config.VehicleShops = {
    {
        {title="Vehicle Shop", colour=1, id=361, x=49.4187, y=2778.793, z=58.043}
    }
}

-- Spawn Menu Settings --
Config.SpawnMenuTitle = "Spawn Menu"
Config.SpawnMenuSubTitle = "Select Your Spawn"
Config.OpenMenuPromptText = "<b>Press E To Open The Spawn Selection Menu</b>"

-- Police System Settings -- 

Config.PoliceStations = {
    {
        ['ToggleDutyPoint'] = { ['x'] = 447.24, ['y'] = -975.55, ['z'] = 30.69}
        -- Add all PDs here
    }
}

-- Gun Shop Settings -- 

Config.GunShopLocations = {
    ['Ammunation'] = { ['x'] = 662.1, ['y'] = -935.3, ['z'] = 20.8},
    ['Ammunation'] = { ['x'] = 810.2, ['y'] = -2157.3, ['z'] = 28.6},
    ['Ammunation'] = { ['x'] = 1693.4, ['y'] = 3759.5, ['z'] = 33.7},
    ['Ammunation'] = { ['x'] = -330.2, ['y'] = 6083.8, ['z'] = 30.4},
    ['Ammunation'] = { ['x'] = 252.3, ['y'] = -50.0, ['z'] = 68.9},
    ['Ammunation'] = { ['x'] = 22.0, ['y'] = -1107.2, ['z'] = 28.8},
    ['Ammunation'] = { ['x'] = 2567.6, ['y'] = 294.3, ['z'] = 107.7},
    ['Ammunation'] = { ['x'] = -1117.5, ['y'] = 2698.6, ['z'] = 17.5},
    ['Ammunation'] = { ['x'] = 842.4, ['y'] = -1033.4, ['z'] = 27.1},
}

Config.GunShopWeapons = {
    {title="Pistol", hash = "WEAPON_PISTOL", price=0, spawnAmmo = 30},
    {title="Combat Pistol", "WEAPON_COMBATPISTOL", price=0, spawnAmmo = 30},
    {title="SNS Pistol", "WEAPON_SNSPISTOL", price=0, spawnAmmo = 30},
    {title="Heavy Pistol", "WEAPON_HEAVYPISTOL", price=0, spawnAmmo = 30},
}