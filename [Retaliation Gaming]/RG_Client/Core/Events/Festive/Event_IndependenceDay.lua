RegisterCommand("fancydress", function(source, args, raw)
    if Config.IndependenceDayEvent then
        -- Set Independence Day Clothing using skin changer here
    else
        RG_Notify("done", "Its not Independence Day!")
    end
end, false)

RegisterCommand("firework", function(source, args, raw)
    if Config.IndependenceDayEvent then
        -- Add Fireworks here - RG_GiveWeapon(weapon, ammo)
    else
        RG_Notify("done", "Its not Independence Day!")
    end
end, false)