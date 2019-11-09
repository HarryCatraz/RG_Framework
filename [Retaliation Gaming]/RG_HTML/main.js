display = false;
tick = 0;
Wait = (ms) => new Promise(resolve =>  setTimeout(resolve, ms));


// this will run every 1s
//setTick(async () => {
    //await Wait(5000) // Milliseconds
    //emitNet("js:chat", tick++)
//})

function updateHUD(playerName, playerJob, hunger, thirst, stamina, health, ammoInMags, amountOfMags, fireMode) {
    $(".playerName").text(playerName);
    $(".playerJob").text(playerJob);
    $(".hunger%").text(hunger);
    $(".thirst%").text(thirst);
    $(".stamina%").text(stamina);
    $(".health").text(health);
    $(".ammoInMags").text(ammoInMags);
    $(".amountOfMags").text(amountOfMags);
    $(".fireMode").text(fireMode);
};

on('playerSpawned', function() {
    setImmediate(() => {
        TriggerEvent('nui:on', true);

        playerName = GetPlayerName(PlayerId());
        playerJob = "TEMPLATE";
        hunger = "TEMPLATE";
        thirst = "TEMPLATE";
        stamina = GetPlayerSprintStaminaRemaining(GetPlayerPed(-1));
        health = GetEntityHealth(GetPlayerPed(-1));
        hasweapon, ammoInMags = GetAmmoInClip(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)));
        amountOfMags = GetAmmoInPedWeapon(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)));
        fireMode = "SEMI";

        updateHUD(playerName, playerJob, hunger, thirst, stamina, health, ammoInMags, amountOfMags, fireMode);

        // this will run every 1s
        setTick(async () => {
            await Wait(1000) // Milliseconds
            // Update Certain HUD Values (job, hunger, thirst, stamina, health, ammoInMags, amountOfMags, fireMode)

            playerJob = "TEMPLATE";
            hunger = "TEMPLATE";
            thirst = "TEMPLATE";
            stamina = GetPlayerSprintStaminaRemaining(GetPlayerPed(-1));
            health = GetEntityHealth(GetPlayerPed(-1));
            hasweapon, ammoInMags = GetAmmoInClip(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)));
            amountOfMags = GetAmmoInPedWeapon(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)));
            fireMode = "SEMI";           

            updateHUD(playerName, playerJob, hunger, thirst, stamina, health, ammoInMags, amountOfMags, fireMode);

        });

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