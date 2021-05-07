local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "RankedAreasBypass",
    }
end

function JelloModule:onStart()
    for i,v in pairs(game.Workspace.RankDoors:GetChildren()) do
        v.CanCollide = false;
    end;
end

function JelloModule:onStop()
    for i,v in pairs(game.Workspace.RankDoors:GetChildren()) do
        v.CanCollide = true;
    end;
end

return JelloModule;