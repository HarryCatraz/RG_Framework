_menuPool = NativeUI.CreatePool()
GunMenu = NativeUI.CreateMenu("Gun Shop", "~s~Purchase A Firearm", "", "", "shopui_title_exec_vechupgrade", "shopui_title_exec_vechupgrade")
_menuPool:Add(GunMenu)

_menuPool:ControlDisablingEnabled(false)
_menuPool:MouseControlsEnabled(false)

function AddGunShopMenu(menu)

    for _, info in pairs(Config.GunShopWeapons) do
        GunShopWeapon = NativeUI.CreateItem(Config.GunShopWeapons.title, "")
        menu:AddItem(GunShopWeapon)
    end

    menu.OnItemSelect = function(sender, item, index)
    if Config.money < Config.GunShopWeapons.price then
        RG_Notify("You dont have enough money to purchase this weapon")
    else
        Config.money = Config.money - Config.GunShopWeapons.price
        RG_GiveWeapon(Config.GunShopWeapons.hash, Config.GunShopWeapons.spawnAmmo)
        RG_Notify("You have bourght a " ..Config.GunShopWeapons.title.. " for " ..Config.GunShopWeapons.price)
    end  
end

AddGunShopMenu(GunMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		_menuPool:ProcessMenus()
	end
end)