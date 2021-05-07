--[[
    Author: Singularity5490
    Note: Unknown
--]]
local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "Gun-Unlocker",
    }
end

function JelloModule:onStart()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Singularity5490/bigpaintball/main/unlockall.lua"))()
end

function JelloModule:onStop()
    -- Stuff to do when module stops
end

return JelloModule;
