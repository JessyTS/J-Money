local jessy = true
local farm = nil
local open, recup_etat, Checked_Box, transform_etat, transform_load, recup_load, transform_lvl, recup_lvl, laboratoire, separateur = false, false, false, true, nil, nil, 0.0, 0.0, true, true
local Process_menu = RageUI.CreateMenu("", "INTERACTION")
Process_menu.Display.Header = true
Process_menu.Closed = function()
    open = false
    jessy = true
    laboratoire = true
    separateur = true
    transform_etat = true
    FreezeEntityPosition(PlayerPedId(), false)
end


Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local lieu = vector3(90.6172, 3745.0625, 40.7709)
        local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
        local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, lieu)
        if dist3 <= 15 then
            if jessy then
                DrawMarker(21, lieu, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.7, 0.7, 0.7, 0, 166, 255, 255, true, true, p19, true)
            end
            if dist3 <= 3.0 then
                if not IsPedInAnyVehicle(playerPed, true) then
                    if jessy then
                        ESX.ShowHelpNotification('Appuyez sur ~INPUT_CONTEXT~ pour Intéragir !')
                    end
                    if IsControlJustPressed(1, 51) then
                        if jessy then
                            FreezeEntityPosition(PlayerPedId(), true)
                            Process__menu()
                            jessy = false
                            Wait(1000)
                            jessy = true
                        end
                    end
                end
            end
        end
        Citizen.Wait(1)
    end
end)