Citizen.CreateThread(function ()
    if TS_Blanchiement.ESX == "new" then
        ESX = exports["es_extended"]:getSharedObject()
    elseif TS_Blanchiement.ESX == "old" then
        ESX = nil
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(600000)
        debug("[^5MONEY WASH SCRIPT^7] V1.0 WASH MONEY Script by ^5JessyTS^7 [^3JessyTS^7]")
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(900000)
        debug("[^5MONEY WASH SCRIPT^7] V1.0 WASH MONEY Script by ^5JessyTS^7 [^3JessyTS^7]")
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(5000)
        JessyTS_Webhook_Init("[MONEY WASH SCRIPT] V1.0 WASH MONEY Script by JessyTS [JessyTS]")
        debug("[^5MONEY WASH SCRIPT^7] V1.0 WASH MONEY Script by ^5JessyTS^7 [^3JessyTS^7]")
        return
    end
end)