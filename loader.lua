if (game:WaitForChild("CoreGui"):FindFirstChild("JelloScreen")) then
	game.CoreGui["JelloScreen"]:Destroy();
end;

loadstring(game:HttpGet("https://dogeprod.github.io/jello/jelloBackend.lua", true))();