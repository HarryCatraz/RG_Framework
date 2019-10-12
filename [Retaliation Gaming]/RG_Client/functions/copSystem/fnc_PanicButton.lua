function fnc_PanicButton()
    local pedX, pedY, pedZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
    panic.blip = AddBlipForCoord(pedX, pedY, pedZ)
    SetBlipSprite(panic.blip, 103) --Target Blip
    SetBlipDisplay(panic.blip, 4)
    SetBlipScale(panic.blip, 0.8)
    SetBlipColour(panic.blip, 76) --Dark Red
    SetBlipAsShortRange(panic.blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("PANIC BUTTON")
    EndTextCommandSetBlipName(panic.blip)
    Wait(20000) --20 Seconds
    RemoveBlip(panic.blip)
    return
end