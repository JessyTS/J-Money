RegisterServerEvent('Jessy:Wash')
AddEventHandler('Jessy:Wash', function ()
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getAccount('money')
    local money_black = xPlayer.getAccount('black_money')
    local fin = TS_Blanchiement.Gains * money_black
    local final = fin / 100

    if money_black <= 0 then
        JessyTS_notif_server('Vous n\'avez plus d\'argent sale sur vous !')
    else
        if money <= 5000 then
            JessyTS_notif_server('Il vous faut au moins 5000 $ (Propre) pour blanchir votre argent sale')
        else
            if money_black <= 1000 then
                JessyTS_notif_server('Il vous faut au moins 1000 $ (sale) pour blanchir')
            else
                xPlayer.removeAccountMoney('black_money', money_black)
                xPlayer.addAccountMoney('money', final)
                JessyTS_notif_server('Vous avez blanchi : '..final)
            end
        end
    end
end)

RegisterServerEvent('Jessy:Wash:Add')
AddEventHandler('Jessy:Wash:Add', function ()
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getAccount('money')
    local money_black = xPlayer.getAccount('black_money')
    local fin = 75 * money_black
    local final = fin / 100

    if money_black <= 0 then
        JessyTS_notif_server('Vous n\'avez plus d\'argent sale sur vous !')
    else
        if money <= 5000 then
            JessyTS_notif_server('Il vous faut au moins 5000 $ (Propre) pour blanchir votre argent sale')
        else
            if money_black <= 1000 then
                JessyTS_notif_server('Il vous faut au moins 1000 $ (sale) pour blanchir')
            else
                xPlayer.removeAccountMoney('black_money', money_black)
                xPlayer.addAccountMoney('money', final)
                JessyTS_notif_server('Vous avez blanchi : '..final)
            end
        end
    end
end)

RegisterServerEvent('Jessy:Wash:Remove')
AddEventHandler('Jessy:Wash:Remove', function ()
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getAccount('money')
    local money_black = xPlayer.getAccount('black_money')
    local fin = 75 * money_black
    local final = fin / 100

    if money_black <= 0 then
        JessyTS_notif_server('Vous n\'avez plus d\'argent sale sur vous !')
    else
        if money <= 5000 then
            JessyTS_notif_server('Il vous faut au moins 5000 $ (Propre) pour blanchir votre argent sale')
        else
            if money_black <= 1000 then
                JessyTS_notif_server('Il vous faut au moins 1000 $ (sale) pour blanchir')
            else
                xPlayer.removeAccountMoney('black_money', money_black)
                xPlayer.addAccountMoney('money', final)
                JessyTS_notif_server('Vous avez blanchi : '..final)
            end
        end
    end
end)