local securityPatrolLocations = {
    {-2964.76, 482.658, 15.7068},
    {260.2324, 205.886, 106.284},
    {150.061, -1039.99,  29.3778},
    {-1213.57, -328.829, 37.7908},
    {-109.453, 6464.05, 31.6267},
    {49.4187, 2778.793 ,58.043},
    {263.894, 2606.463 ,44.983},
    {1039.958, 2671.134 ,39.550},
    {1207.260, 2660.175 ,37.899},
    {2539.685, 2594.192 ,37.944},
    {2679.858, 3263.946 ,55.240},
    {1687.156, 4929.392 ,42.078},
    {1701.314, 6416.028 ,32.763},
    {179.857, 6602.839 ,31.868},
    {-94.4619, 6419.594 ,31.489},
    {-2554.996, 2334.40 ,33.078},
    {-1800.375, 803.661 ,38.651},
    {-1437.622, -276.747 ,46.207},
    {-2096.243, -320.286 ,13.168},
    {-724.619, -935.1631 ,19.213},
    {-526.019, -1211.003 ,18.184},
    {-70.2148, -1761.792 ,29.534},
    {265.648, -1261.309 ,29.292},
    {819.653, -1028.846 ,26.403},
    {1208.951, -1402.56 ,35.224},
    {1181.381, -330.847 ,69.316},
    {620.843, 269.100 ,03.089},
    {2581.321, 362.039 ,108.468}
}

RegisterNetEvent("startSecurity")
AddEventHandler("startSecurity", function()
    RequestModel("s_m_m_security_01")
    while not HasModelLoaded("s_m_m_security_01") do
        Citizen.Wait(0)
    end
    SetPlayerModel(GetPlayerPed(-1), GetHashKey("s_m_m_security_01"))

    SetNotificationTextEntry("STRING")
    AddTextComponentString("<b>Job System: You have started a security job.</b>")
    DrawNotification(true, false)

    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(WEAPON_FLASHLIGHT), 60, false, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(WEAPON_NIGHTSTICK), 60, false, false)

    Config.currentJob = "Security"
    
end)