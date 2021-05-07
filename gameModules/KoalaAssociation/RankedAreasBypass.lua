local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "RankedAreasBypass",
    }
end

function JelloModule:onStart()
    for i,v in pairs(game.Workspace.ExclusiveAreas:GetChildren()) do
        if (v:IsA("Part")) then
            v.CanCollide = false;
        end;
    end;
    
    game.Workspace.ExclusiveAreas.Balcony.BalconyCheck.CanCollide = false;
    game.Workspace.ExclusiveAreas.Outside.OutsideCheck1.CanCollide = false;
    game.Workspace.ExclusiveAreas.Outside.OutsideCheck2.CanCollide = false;
end

function JelloModule:onStop()
    for i,v in pairs(game.Workspace.ExclusiveAreas:GetChildren()) do
        if (v:IsA("Part")) then
            v.CanCollide = true;
        end;
    end;
    
    game.Workspace.ExclusiveAreas.Balcony.BalconyCheck.CanCollide = true;
    game.Workspace.ExclusiveAreas.Outside.OutsideCheck1.CanCollide = true;
    game.Workspace.ExclusiveAreas.Outside.OutsideCheck2.CanCollide = true;
end

return JelloModule;