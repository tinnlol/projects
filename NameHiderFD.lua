while getgenv().namehiderfd do
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game:GetService("Players").LocalPlayer then
            v.Name = "[REDACTED]"
            v.DisplayName = "[REDACTED]"
        else
            v.Name = "[SCRIPT_USER]"
            v.DisplayName = "[SCRIPT_USER]"
        end
    end
    wait(2)
end
