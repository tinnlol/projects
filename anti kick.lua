local namecall
namecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if getnamecallmethod():lower() == "kick" then
        return;
    end
    return namecall(self, ...)
end))

local index
index = hookmetamethod(game, "__index", newcclosure(function(self, key)
    if key:lower() == "kick" then
        return;
    end
    return index(self, key)
end))
