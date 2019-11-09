RegisterNetEvent("RG_NUI::OpenMenu")
AddEventHandler("RG_NUI::OpenMenu", function(menu)
    if menu == "SpawnMenu" then
        SpawnMenu:Visible(not SpawnMenu:Visible())
    elseif menu == "LEOMenu" then
        LEOMenu:Visible(not LEOMenu:Visible())
    elseif menu == "GunShopMenu" then
        GunMenu:Visible(not GunMenu:Visible())
    elseif menu == "CopGarage" then
        CopGarageMenu:Visible(not CopGarageMenu:Visible())
    else
        print("Menu Not Found")
    end
end)