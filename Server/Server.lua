RegisterServerEvent('Jessy:Wash:Add')
AddEventHandler('Jessy:Wash:Add', function (money_black)
    local money_black = money_black
    local xPlayer = ESX.GetPlayerFromId(source)
    local zgeg = xPlayer.getIdentifier(source)
    local fin = TS_Blanchiement.Gains * money_black
    local final = fin / 100

    if TS_Blanchiement.Debug then
        debug('Le joueur : '..zgeg..' | Vient de blanchir '..money_black..' $')
    end

    if TS_Blanchiement.Webhook_Discord then
        JessyTS_Webhook_Wash(debut, message)
    end

    xPlayer.addMoney(final)
    JessyTS_notif_server('Vous avez blanchi : '..final)
end)

RegisterServerEvent('Jessy:Wash:Remove')
AddEventHandler('Jessy:Wash:Remove', function ()
    local xPlayer = ESX.GetPlayerFromId(source)
    local money_black = xPlayer.getInventoryItem('black_money').count

    xPlayer.removeAccountMoney('black_money', money_black)
end)

ESX.RegisterServerCallback('JessyTS:Wash:GetMoney', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money_black = xPlayer.getInventoryItem('black_money').count

    cb(money_black)
end)