display = false
tick = 0
Wait = (ms) => new Promise(resolve =>  setTimeout(resolve, ms))


// this will run every 1s
//setTick(async () => {
    //await Wait(5000) // Milliseconds
    //emitNet("js:chat", tick++)
//})

setTick(async () => {
    updateHUD()
})

function updateHUD() {

    var playerName = GetPlayerName(PlayerId());
    var playerJob = Config.currentJob;
    var hunger = GetEntityHealth(GetPlayerPed(-1));
    var thirst = GetEntityHealth(GetPlayerPed(-1));
    var stamina = GetPlayerSprintStaminaRemaining(GetPlayerPed(-1));
    var health = GetEntityHealth(GetPlayerPed(-1));
    var hasweapon, ammoInMags = GetAmmoInClip(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)));
    var amountOfMags = GetAmmoInPedWeapon(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)));
    var fireMode = GetEntityHealth(GetPlayerPed(-1)) - 100;

    document.getElementById("playerName").innerHTML = playerName;
    document.getElementById("playerJob").innerHTML = playerJob;
    document.getElementById("hunger%").innerHTML = hunger;
    document.getElementById("thirst%").innerHTML = thirst;
    document.getElementById("stamina%").innerHTML = stamina;
    document.getElementById("health%").innerHTML = toString(health);
    document.getElementById("ammoInMags").innerHTML = ammoInMags;
    document.getElementById("amountOfMags").innerHTML = amountOfMags;
    document.getElementById("fireMode").innerHTML = fireMode;
}

on('playerSpawned', function() {
    setImmediate(() => {
        TriggerEvent('nui:on', true)
    })
})

RegisterNetEvent('nui:on');
on('nui:on', function() {
    SendNUIMessage({
        type = "ui",
        display = true
    });
})

RegisterNetEvent('nui:off');
on('nui:off', function() {
    SendNUIMessage({
        type = "ui",
        display = false
    });
})