local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "Rejoin",
    }
end

function JelloModule:onStart()
    game:GetService("TeleportService"):Teleport(game.PlaceId);
    --also cool
end

function JelloModule:onStop()
    
end

return JelloModule;