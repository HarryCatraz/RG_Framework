display = false;
tick = 0;
Wait = (ms) => new Promise(resolve =>  setTimeout(resolve, ms));


// this will run every 1s
//setTick(async () => {
    //await Wait(5000) // Milliseconds
    //emitNet("js:chat", tick++)
//})

on('playerSpawned', function() {

        await Wait(0)

        TriggerEvent('nui:on', true);

        const ped = GetPlayerPed(-1);
        const pedid = GetPlayerName(PlayerId())

        // this will run every 1s
        setTick(async () => {
            await Wait(1000)

            playerName = GetPlayerName(pedid)
            playerJob = "TEMPLATE";
            hunger = "TEMPLATE";
            thirst = "TEMPLATE";
            stamina = GetPlayerSprintStaminaRemaining(ped);
            health = GetEntityHealth(ped);
            hasweapon, ammoInMags = GetAmmoInClip(ped, GetSelectedPedWeapon(ped));
            amountOfMags = GetAmmoInPedWeapon(ped, GetSelectedPedWeapon(ped));
            fireMode = "SEMI";           

            document.getElementById("playerName").innerHTML = playerName;
            document.getElementById("playerJob").innerHTML = playerJob;
            document.getElementById("hunger%").innerHTML = hunger;
            document.getElementById("thirst%").innerHTML = thirst;
            document.getElementById("stamina%").innerHTML = stamina;
            document.getElementById("health").innerHTML = health;
            document.getElementById("ammoInMags").innerHTML = ammoInMags;
            document.getElementById("amountOfMags").innerHTML = amountOfMags;
            document.getElementById("fireMode").innerHTML = fireMode;

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