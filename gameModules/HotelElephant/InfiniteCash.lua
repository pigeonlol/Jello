local JelloModule = {}

function JelloModule:getModuleData()
    return {
        displayTitle = "InfiniteCash",
    }
end

function JelloModule:onStart()
    game.ReplicatedStorage.MoneyRequest:FireServer(false,999999999,"Cash");
end

function JelloModule:onStop()
    game.ReplicatedStorage.MoneyRequest:FireServer(false,500-game.Players.LocalPlayer.leaderstats.Cash.Value,"Cash");
end

return JelloModule;