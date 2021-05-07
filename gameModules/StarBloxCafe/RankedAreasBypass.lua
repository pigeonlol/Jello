local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "RankedAreasBypass",
    }
end

function JelloModule:onStart()
    for i,v in pairs(game.Workspace.Doors:GetChildren()) do
        for i,v in pairs(v:GetChildren()) do
            for i,v in pairs(v:GetChildren()) do
                v.CanCollide = false;
            end;
        end;
    end;
end

function JelloModule:onStop()
    for i,v in pairs(game.Workspace.Doors:GetChildren()) do
        for i,v in pairs(v:GetChildren()) do
            for i,v in pairs(v:GetChildren()) do
                v.CanCollide = true;
            end;
        end;
    end;
end

return JelloModule;