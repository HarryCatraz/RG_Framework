_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Interaction Menu", "~b~Prism RP DoJ Interaction Menu")
_menuPool:Add(mainMenu)

function CivilianInteractionMenu(menu) 
	local submenu = _menuPool:AddSubMenu(menu, "~r~Civilian Interaction") 
	local TieUpItem = NativeUI.CreateItem("Tie Up", "Tie Up Nearest Player")
	TieUpItem.Activated = function(sender, item)
		if item == TieUpItem then
			-- Handcuff Function
		end
	end

	local escortItem = NativeUI.CreateItem("Escort", "Escort Nearest Player")
	escortItem.Activated = function(sender, item)
		if item == escortItem then
			-- Escort Function
		end
	end
	submenu:AddItem(escortItem)
	submenu:AddItem(TieUpItem)
end

function PoliceInteractionMenu(menu) 
	local submenu = _menuPool:AddSubMenu(menu, "~b~Police Interaction") 
	
	local handCuffItem = NativeUI.CreateItem("Handcuff", "Handcuff Nearest Player")
	handCuffItem.Activated = function(sender, item)
		if item == handCuffItem then
			-- Handcuff Here
		end
	end

	local escortItem = NativeUI.CreateItem("Escort", "Escort Nearest Player")
	escortItem.Activated = function(sender, item)
		if item == escortItem then
			-- Escort Function
		end
	end

	local policevehicleslist = NativeUI.CreateListItem("Spawn Police Vehicle", Config.policevehicles, 1)
	submenu:AddItem(policevehicleslist)
	submenu.OnListSelect = function(sender, item, index)  
		if item == policevehicleslist then
			local selectedPoliceVehicle = item:IndexToItem(index)
			PrismRP_DoJ_SpawnVehicle(selectedPoliceVehicle)
		end
	end

	local PoliceUniformItem = NativeUI.CreateItem("Put On Uniform", "Put On Basic Police Uniform")
	PoliceUniformItem.Activated = function(sender, item)
		if item == PoliceUniformItem then
			TriggerEvent('skinchanger:getSkin', function(skin)
                if skin.sex == 0 then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.PoliceUniformIDs)
                end
            end)
		end
	end

	local PoliceWeaponItem = NativeUI.CreateItem("Equip Police Weapons", "Get Police Weapons")
	PoliceWeaponItem.Activated = function(sender, item)
		if item == PoliceWeaponItem then
			for i,_ in Config.PoliceWeapons do
				PrismRP_DoJ_SpawnWeapon(i)
			end
		end
	end

	local PoliceDeploySpikes = NativeUI.CreateItem("Deploy Spike Strips", "Deploy Spike Strips In Front Of Player")
	PoliceDeploySpikes.Activated = function(sender, item)
		if item == PoliceDeploySpikes then
			-- Deploy Spikes Function
		end
	end

	local PoliceRemoveSpikes = NativeUI.CreateItem("Remove Spike Strips", "Remove Spike Strips In Front Of Player")
	PoliceRemoveSpikes.Activated = function(sender, item)
		if item == PoliceRemoveSpikes then
			-- Remove Spikes Function
		end
	end

	local PolicePutInVehicle = NativeUI.CreateItem("Place In Vehicle", "Place Player In Back Of Vehicle")
	PolicePutInVehicle.Activated = function(sender, item)
		if item == PolicePutInVehicle then
			-- Place In Vehicle Function
		end
	end

	local PolicePullOutOfVehicle = NativeUI.CreateItem("Pull Out Of Vehicle", "Pull Out Player Vehicle")
	PolicePullOutOfVehicle.Activated = function(sender, item)
		if item == PolicePullOutOfVehicle then
			-- Pull Out Of Vehicle Function
		end
	end

	submenu:AddItem(PolicePutInVehicle)
	submenu:AddItem(PolicePullOutOfVehicle)
	submenu:AddItem(PoliceRemoveSpikes)
	submenu:AddItem(PoliceDeploySpikes)
	submenu:AddItem(PoliceWeaponItem)
	submenu:AddItem(PoliceUniformItem)
	submenu:AddItem(escortItem)
	submenu:AddItem(handCuffItem)
end

function EMSInteractionMenu(menu) 
	local submenu = _menuPool:AddSubMenu(menu, "~g~EMS Interaction") 
	local CPRItem = NativeUI.CreateItem("Start CPR", "Start CPR On Nearest Deceased Player")
	CPRItem.Activated = function(sender, item)
		if item == CPRItem then
			-- CPR Function
		end
	end

	local escortItem = NativeUI.CreateItem("Escort", "Escort Nearest Player")
	escortItem.Activated = function(sender, item)
		if item == escortItem then
			-- Escort Function
		end
	end

	local EMSvehicleslist = NativeUI.CreateListItem("Spawn EMS Vehicle", Config.EMSvehicles, 1)
	submenu:AddItem(EMSvehicleslist)
	submenu.OnListSelect = function(sender, item, index)  
		if item == EMSvehicleslist then
			local selectedEMSVehicle = item:IndexToItem(index)
			PrismRP_DoJ_SpawnVehicle(selectedEMSVehicle)
		end
	end

	submenu:AddItem(escortItem)
	submenu:AddItem(CPRItem)
end

EMSInteractionMenu(mainMenu)
PoliceInteractionMenu(mainMenu)
CivilianInteractionMenu(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		_menuPool:ProcessMenus()
	end
end)

RegisterCommand('menu', function(source, args)
	mainMenu:Visible(not mainMenu:Visible())
end, false)
