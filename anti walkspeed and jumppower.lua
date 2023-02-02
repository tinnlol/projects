local normalws = 16 -- change to anything u want but default is 16
local normaljp = 50 -- change to anything u want but default is 50
local hook
hook = hookmetamethod(game, "__index", newcclosure(function(self, key)
    if self.Name == "Humanoid" and key:lower() == "walkspeed" then
        return normalws;
    elseif self.Name == "Humanoid" and key:lower() == "jumppower" then
        return normaljp;
    end
    return hook(self, key)
end))
