function exp_OpenMenu(menu)
    if menu == "SpawnMenu" then
        SpawnMenu:Visible(not SpawnMenu:Visible())
    elseif menu == "LEOMenu" then
        LEOMenu:Visible(not LEOMenu:Visible())
    elseif menu == "GunShopMenu" then
        GunMenu:Visible(not GunMenu:Visible())
    else
        print("Menu Not Found")
    end
end