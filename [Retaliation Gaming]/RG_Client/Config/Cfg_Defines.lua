Config = {}

Config.ID = id
Config.Name = name
Config.Args = args

-- AI Settings --
Config.AIMultiplier = 0.4
Config.EnableDispatch = false

-- Job Settings --
Config.currentJob = "Unemployed"

-- Database Settings --
Config.syncDelay = 300 --5 Minutes

-- Paycheck Settings --
Config.paycheckDelay = 300 --5 Minutes

-- Hunger and Thirst Settings --
Config.BasicNeedsRate = 10 -- 10 Second per %
Config.EnableBasicNeedsHUD = true -- Enables the Piss and Shit system's HUD
Config.hunger = 0
Config.thirst = 0

-- Shit and Piss Settings --
Config.relifRate = 10 -- 10 Second per %
Config.EnableRelifHUD = true -- Enables the Hunger and Thirsts system's HUD
Config.pissrelif = 0
Config.shitrelif = 0

-- Economy Settings --
Config.money = 0
Config.bank = 0
Config.paycheck = 5000

-- Major Crime Settings --
Config.recentmajorcrime = false
    
-- Vehicle Shop Settings --
Config.VehicleShops {
    VehicleShopBlips = {
        {title="Vehicle Shop", colour=1, id=361, x=49.4187, y=2778.793, z=58.043}
    }
}