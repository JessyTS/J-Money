function JessyTS_Webhook_Wash(debut, message)
    local avatar = TS_Blanchiement.Webhook_Avatar
    local DiscordWebHook = TS_Blanchiement.Webhook_Wash
    local color = TS_Blanchiement.Webhook_color
    local name = 'J-Money | Logs | '..TS_Blanchiement.Webhook_Server_Name
    local embeds = {
        {
            ["title"] = name,
            ["description"] = debut..'\n```'..message..'```',
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] =  {
                ["text"] = 'J-Money | JessyTS',
            },
        }
    }

    if message == nil or message == '' then 
        return FALSE
    end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({avatar_url = avatar, username = name, embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function JessyTS_Webhook_Init(message)
    local avatar = 'https://cdn.discordapp.com/attachments/1224004046373781567/1224007986171744327/standard1.gif?ex=661bed44&is=66097844&hm=cd2266a2313700fa874a6b1f4dbc26dc8cc678d9923919e5b40ed434748fe826&'
    local DiscordWebHook = TS_Blanchiement.Webhook_Init
    local name = 'J-Money | '..TS_Blanchiement.Webhook_Server_Name
    local embeds = message

    if message == nil or message == '' then 
        return FALSE
    end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({avatar_url = avatar, username = name, content = embeds}), { ['Content-Type'] = 'application/json' })
end

function JessyTS_cb(nombre, stock, int)
    while true do
        ESX.RegisterServerCallback('JessyTS:drugsell:callb'..int, function(source, cb)
            cb(nombre)
        end)
        Citizen.Wait(10000)
    end
end