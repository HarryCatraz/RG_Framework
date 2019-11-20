var display = false;
var tick = 0;
Wait = (ms) => new Promise(resolve =>  setTimeout(resolve, ms));


// this will run every 1s
//setTick(async () => {
    //await Wait(5000) // Milliseconds
    //emitNet("js:chat", tick++)
//})

on('playerSpawned', function() {

        TriggerEvent('nui:on', true);

        var ped = GetPlayerPed(-1);
        var pedid = GetPlayerName(PlayerId());

        // this will run every 1s
        setTick(async () => {
            await Wait(1000);

            var playerName = GetPlayerName(pedid);
            var playerJob = "TEMPLATE";
            var hunger = "TEMPLATE";
            var thirst = "TEMPLATE";
            var stamina = GetPlayerSprintStaminaRemaining(ped);
            var health = GetEntityHealth(ped);
            var ammoInMags = GetAmmoInClip(ped, GetSelectedPedWeapon(ped));
            var amountOfMags = GetAmmoInPedWeapon(ped, GetSelectedPedWeapon(ped));
            var fireMode = "SEMI";           

            $("playerName").text(playerName);
            $("playerJob").text(playerJob);
            $("hunger%").text(hunger);
            $("thirst%").text(thirst);
            $("stamina%").text(stamina);
            $("health").text(health);
            $("ammoInMags").text(ammoInMags);
            $("amountOfMags").text(amountOfMags);
            $("fireMode").text(fireMode);

        });
});

RegisterNetEvent('nui:on');
on('nui:on', function() {
    SendNUIMessage({
        type = "ui",
        display = true
    });
});

RegisterNetEvent('nui:off');
on('nui:off', function() {
    SendNUIMessage({
        type = "ui",
        display = false
    });
});