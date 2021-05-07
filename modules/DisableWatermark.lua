local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "DisableWatermark",
    }
end

function JelloModule:onStart()
    game.CoreGui.JelloScreen.WaterMark.Visible = false;
end

function JelloModule:onStop()
    game.CoreGui.JelloScreen.WaterMark.Visible = true;
end

return JelloModule;
