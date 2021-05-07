--[[
    Author: Sparmage
    Note: Patched in most games but works sometimes
--]]
local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "Timer",
    }
end

function JelloModule:onStart()
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = (16*2)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = (50*2)
end

function JelloModule:onStop()
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
end

return JelloModule;
