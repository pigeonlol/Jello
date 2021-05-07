local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "RankedAreasBypass",
    }
end

function JelloModule:onStart()
    game.Workspace.GroupDoorA.CanCollide = false;
    game.Workspace.GroupDoorB.CanCollide = false;
    game.Workspace.GroupDoorC.CanCollide = false;
    game.Workspace.GroupDoorD.CanCollide = false;
end

function JelloModule:onStop()
    game.Workspace.GroupDoorA.CanCollide = true;
    game.Workspace.GroupDoorB.CanCollide = true;
    game.Workspace.GroupDoorC.CanCollide = true;
    game.Workspace.GroupDoorD.CanCollide = true;
end

return JelloModule;