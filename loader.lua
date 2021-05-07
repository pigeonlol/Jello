if (game:WaitForChild("CoreGui"):FindFirstChild("JelloScreen")) then
	game.CoreGui["JelloScreen"]:Destroy();
end;

loadstring(game:HttpGet("https://DogeProd.github.io/Jello/jelloBackend.lua", true))();