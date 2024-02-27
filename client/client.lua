RegisterNetEvent("AJ:clearAllVehicles")
AddEventHandler("AJ:clearAllVehicles", function()
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then
            SetVehicleHasBeenOwnedByPlayer(vehicle, false)
            SetEntityAsMissionEntity(vehicle, false, false)
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then
                DeleteVehicle(vehicle)
            end
        end
    end
end) -- Lines 5-13 Inspired by wld-delallveh (https://github.com/Mutlak15/FiveM-dvall/blob/main/wld-delallveh/client/client.lua)
