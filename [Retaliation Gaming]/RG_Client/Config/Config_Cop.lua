-- Cop System Settings --
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
Config.CopGarageLocations = {
    { x  = -462.78, y = 6040.34, z = 31.34, h = 160.0},
    { x  = 1871.78, y = 3692.87, z = 33.57, h = 208.0},
    { x  = 536.81, y = -38.76, z = 70.74, h = 225.0},
    { x  = -1330.9, y = -840.65, z = 13.72, h = 128.0},
    { x  = 388.84, y = -1621.44, z = 29.29, h = 321.0},
    { x  = 830.82, y = -1265.01, z = 26.28, h = 86.0},
    { x  = 449.61, y = -1018.49, z = 28.53, h = 88.75},
    { x  = -557.64, y = -145.48, z = 38.17, h = 109.0},
    { x  = 372.43, y = 787.96, z = 186.93, h = 168.0}
}
Config.CopGarageVehicles = {
    {title="Dodge Charger (LSPD)", hash = "NorthLSPD-Charger"},
    {title="Ford CVPI (LSPD)", hash =  "NorthLSPD-CVPI"},
    {title="Ford FPI (LSPD)", hash =  "NorthLSPD-FPI"},
    {title="Helicopter (LSPD)", hash = "NorthLSPD-Heli"},
    {title="Chevrolet Tahoe (LSPD)", hash = "NorthLSPD-Tahoe"},
    {title="Dodge Charger (SASP)", hash =  "SASP-Charger"},
    {title="Ford CVPI (SASP)", hash =  "SASP-CVPI"},
    {title="Ford FPI (SASP)", hash =  "SASP-FPI"},
    {title="Helicopter (SASP)", hash =  "SASP-Heli"},
    {title="Chevrolet Tahoe (SASP)", hash =  "SASP-Tahoe"},
    {title="Dodge Charger (Sheriff)", hash =  "Sheriff-Charger"},
    {title="Ford CVPI (Sheriff)", hash =  "Sheriff-CVPI"},
    {title="Ford FPI (Sheriff)", hash =  "Sheriff-FPI"},
    {title="Helicopter (Sheriff)", hash =  "Sheriff-Heli"},
    {title="Chevrolet Tahoe (Sheriff)", hash =  "Sheriff-Tahoe"}
}
Config.CopWeaponsLocations = {
    -- Add Co-ords here
    --{ x  = 372.43, y = 787.96, z = 186.93, h = 168.0}
}
Config.EvidenceModel = "prop_drug_package"
Config.EvidenceDeleteDelay = 15 -- Deletes evidence 15 Minutes after spawning
Config.CopUniformLocations = {
    -- Add Cop Clothing Locations Here
}
Config.CopUniformIDs = {
    ['tshirt_1'] = 129,  ['tshirt_2'] = 0,  
    ['torso_1'] = 55,    ['torso_2'] = 0,
    ['shoes_1'] = 10,    ['shoes_2'] = 0,
    ['chain_1'] = 128,    ['chain_2'] = 0,
    ['helmet_1'] = 46,   ['helmet_2'] = 0
}