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

        let ped = GetPlayerPed(-1);
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