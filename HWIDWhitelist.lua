local allowedhwids = loadstring(game:HttpGet("https://raw.githubusercontent.com/tinnlol/configs/main/HWIDWhitelist.lua", true))()
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()


for i,v in pairs(allowedhwids) do
    if hwid == allowedhwids[i] then
        warn("whitelisted!")
        return
    elseif i == #allowedhwids then
        game:GetService("Players").LocalPlayer.kick(game:GetService("Players").LocalPlayer, "You are not whitelisted.")
    end
end
