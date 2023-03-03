local Players = game:GetService("Players")
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local smxdevhwid = "79BC01E4-03C0-4967-925B-98CD3D35A9BC"
function piss()
    if hwid == smxdevhwid then
        game:GetService("Players").LocalPlayer.kick(game:GetService("Players").LocalPlayer, "pissed on")
    end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
        if msg:lower() == "piss on me!" then
            v.Chatted:connect(function(msg2)
                if msg2 == "ofc" or msg2 == "yea" or msg2 == "yes" or msg2 == "ye" or msg2 == "yeah" then
                    piss()
                end
            end)
        end
    end)
end
