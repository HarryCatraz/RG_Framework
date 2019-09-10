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
Config.VehicleShops {
    VehicleShopBlips = {
        {title="Vehicle Shop", colour=1, id=361, x=49.4187, y=2778.793, z=58.043}
    }
}

-- Spawn Menu Settings --
Config.SpawnMenuTitle = "Spawn Menu"
Config.SpawnMenuSubTitle = "Select Your Spawn"
Config.OpenMenuPromptText = "<b>Press E To Open The Spawn Selection Menu</b>"