--  // Fonction notif \\ Vous pouvez la remplacer par votre système de notif | You can replace it with your notification system
function JessyTS_notif_server(message)
    TriggerClientEvent('esx:showNotification', source, message)
    --TriggerEvent('bulletin:send', source, message)
    --print(message)
end

function JessyTS_notif_client(message)
    ESX.ShowNotification(message)
    --TriggerEvent('bulletin:send', message)
    --print(message)
end

-- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
function debug(message) -- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
    print('[^5INFO^7]'..' '..message..' '..'[^3J-Money^7]') -- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
end -- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
-- // NE MODIFIEZ PAS CECI | DO NOT EDIT THIS \\
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------