--[[
    Jello
]]--

if (game:WaitForChild("CoreGui"):FindFirstChild("JelloScreen")) then
	game.CoreGui["JelloScreen"]:Destroy();
end;

--[[
    SERVICES
]]--

local HttpService = game:GetService("HttpService");
local UserInputService = game:GetService("UserInputService");
local TweenService = game:GetService("TweenService");

--[[
    VARS
]]--

local DogeDomain = "https://dogeprod.github.io/Jello";
local jelloModuleHolder;
local modulesRunning = {};
local DBs = {
	["rightShift"] = false,
};
local jelloColors = {
    ["hoverWhite"] = Color3.fromRGB(233,233,231),
    ["white"] = Color3.fromRGB(250,250,250),
    ["hoverBlue"] = Color3.fromRGB(28,174,255),
    ["blue"] = Color3.fromRGB(29, 159, 255),
    ["textWhite"] = Color3.fromRGB(250,250,250),
    ["textBlack"] = Color3.fromRGB(42, 42, 42)
};

local dSupportedModules = HttpService:JSONDecode(game:HttpGet(DogeDomain.."/supportedModules.json", true));
local dSupportedGames = HttpService:JSONDecode(game:HttpGet(DogeDomain.."/supportedGames.json", true));

--[[
    UI
]]--

local JelloScreen = Instance.new("ScreenGui");
local WaterMark = Instance.new("Frame");
local studioTitle = Instance.new("TextLabel");
local UIPadding = Instance.new("UIPadding");
local projectName = Instance.new("TextLabel");
local UIPadding_2 = Instance.new("UIPadding");
local modsMenu = Instance.new("Frame");
local panelsCore = Instance.new("Frame");
local UIGridLayout = Instance.new("UIGridLayout");
local UIPadding_3 = Instance.new("UIPadding");
local optionMenu = Instance.new("Frame");
local PenumbraShadow = Instance.new("ImageLabel");
local MainFrame = Instance.new("Frame");
local textTitle = Instance.new("TextLabel");
local UIPadding_4 = Instance.new("UIPadding");
local optionList = Instance.new("ScrollingFrame");
local UIListLayout = Instance.new("UIListLayout");
local moduleButtonTemplate = Instance.new("TextButton");
local UIPadding_5 = Instance.new("UIPadding");
local panelTemplate = Instance.new("Frame");
local MainFrame_2 = Instance.new("Frame");
local modsList = Instance.new("ScrollingFrame");
local UIListLayout_2 = Instance.new("UIListLayout");
local textTitle_2 = Instance.new("TextLabel");
local UIPadding_6 = Instance.new("UIPadding");
local PenumbraShadow_2 = Instance.new("ImageLabel");
	
JelloScreen.Name = "JelloScreen";
JelloScreen.DisplayOrder = 69420;

WaterMark.Name = "WaterMark";
WaterMark.Parent = JelloScreen;
WaterMark.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
WaterMark.BackgroundTransparency = 1.000;
WaterMark.BorderSizePixel = 0;
WaterMark.Size = UDim2.new(0, 150, 0, 100);
	
studioTitle.Name = "studioTitle";
studioTitle.Parent = WaterMark;
studioTitle.Active = true;
studioTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
studioTitle.BackgroundTransparency = 1.000;
studioTitle.Position = UDim2.new(0, 0, -0.00112866424, 0);
studioTitle.Size = UDim2.new(1, 0, 0, 50);
studioTitle.Font = Enum.Font.GothamSemibold;
studioTitle.Text = "DOGE";
studioTitle.TextColor3 = Color3.fromRGB(255, 255, 255);
studioTitle.TextSize = 52.000;
studioTitle.TextTransparency = 0.500;
studioTitle.TextWrapped = true;
studioTitle.TextXAlignment = Enum.TextXAlignment.Left;
	
UIPadding.Parent = studioTitle;
UIPadding.PaddingLeft = UDim.new(0, 5);
	
projectName.Name = "projectName";
projectName.Parent = WaterMark;
projectName.Active = true;
projectName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
projectName.BackgroundTransparency = 1.000;
projectName.Position = UDim2.new(0, 0, 0.293860018, 0);
projectName.Size = UDim2.new(1, 0, 0, 50);
projectName.Font = Enum.Font.GothamSemibold;
projectName.Text = "Jello";
projectName.TextColor3 = Color3.fromRGB(255, 255, 255);
projectName.TextSize = 24.000;
projectName.TextTransparency = 0.500;
projectName.TextWrapped = true;
projectName.TextXAlignment = Enum.TextXAlignment.Left;
	
UIPadding_2.Parent = projectName;
UIPadding_2.PaddingLeft = UDim.new(0, 5);
	
modsMenu.Name = "modsMenu";
modsMenu.Parent = JelloScreen;
modsMenu.AnchorPoint = Vector2.new(0.5, 0.5);
modsMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
modsMenu.BackgroundTransparency = 1.000;
modsMenu.BorderSizePixel = 0;
modsMenu.Position = UDim2.new(0.5, 0, 0.5, 0);
modsMenu.Size = UDim2.new(1, 0, 1, 0);
modsMenu.Visible = false;
	
panelsCore.Name = "panelsCore";
panelsCore.Parent = modsMenu;
panelsCore.AnchorPoint = Vector2.new(0.5, 0.5);
panelsCore.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
panelsCore.BackgroundTransparency = 1.000;
panelsCore.BorderSizePixel = 0;
panelsCore.Position = UDim2.new(0.5, 0, 0.5, 0);
panelsCore.Size = UDim2.new(1, 0, 1, 0);

UIGridLayout.Parent = panelsCore;
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder;
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center;
UIGridLayout.CellPadding = UDim2.new(0, 10, 0, 10);
UIGridLayout.CellSize = UDim2.new(0, 225, 0, 350);
	
UIPadding_3.Parent = panelsCore;
UIPadding_3.PaddingLeft = UDim.new(0, 25);
	
optionMenu.Name = "optionMenu";
optionMenu.Parent = modsMenu;
optionMenu.AnchorPoint = Vector2.new(0.5, 0.5);
optionMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
optionMenu.BackgroundTransparency = 1.000;
optionMenu.BorderSizePixel = 0;
optionMenu.Position = UDim2.new(0.5, 0, 0.5, 0);
optionMenu.Size = UDim2.new(0, 250, 0, 450);
optionMenu.Visible = false;
	
PenumbraShadow.Name = "PenumbraShadow";
PenumbraShadow.Parent = optionMenu;
PenumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5);
PenumbraShadow.BackgroundTransparency = 1.000;
PenumbraShadow.BorderSizePixel = 0;
PenumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 1);
PenumbraShadow.Size = UDim2.new(1, 16, 1, 16);
PenumbraShadow.ZIndex = 0;
PenumbraShadow.Image = "rbxassetid://1316045217";
PenumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0);
PenumbraShadow.ImageTransparency = 0.880;
PenumbraShadow.ScaleType = Enum.ScaleType.Slice;
PenumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118);
	
MainFrame.Name = "MainFrame";
MainFrame.Parent = optionMenu;
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
MainFrame.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
MainFrame.BorderSizePixel = 0;
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
MainFrame.Size = UDim2.new(1, 0, 1, 0);
	
textTitle.Name = "textTitle";
textTitle.Parent = MainFrame;
textTitle.Active = true;
textTitle.AnchorPoint = Vector2.new(0.5, 0);
textTitle.BackgroundColor3 = Color3.fromRGB(239, 243, 249);
textTitle.BorderSizePixel = 0;
textTitle.Position = UDim2.new(0.5, 0, 0, 0);
textTitle.Size = UDim2.new(1, 0, 0, 50);
textTitle.Font = Enum.Font.Gotham;
textTitle.Text = "Module Title";
textTitle.TextColor3 = Color3.fromRGB(170, 170, 170);
textTitle.TextSize = 24.000;
textTitle.TextWrapped = true;
textTitle.TextXAlignment = Enum.TextXAlignment.Left;
	
UIPadding_4.Parent = textTitle;
UIPadding_4.PaddingLeft = UDim.new(0, 10);
	
optionList.Name = "optionList";
optionList.Parent = MainFrame;
optionList.Active = true;
optionList.AnchorPoint = Vector2.new(0.5, 1);
optionList.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
optionList.BackgroundTransparency = 1.000;
optionList.BorderSizePixel = 0;
optionList.Position = UDim2.new(0.5, 0, 1, 0);
optionList.Size = UDim2.new(1, 0, 1, -50);
optionList.CanvasSize = UDim2.new(0, 0, 0, 0);
	
UIListLayout.Parent = optionList;
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	
moduleButtonTemplate.Name = "moduleButtonTemplate";
moduleButtonTemplate.BackgroundColor3 = Color3.fromRGB(250, 250, 250);
moduleButtonTemplate.BorderSizePixel = 0;
moduleButtonTemplate.Size = UDim2.new(1, 0, 0, 30);
moduleButtonTemplate.Visible = false;
moduleButtonTemplate.AutoButtonColor = false;
moduleButtonTemplate.Font = Enum.Font.Gotham;
moduleButtonTemplate.Text = "KeyStrokes";
moduleButtonTemplate.TextColor3 = Color3.fromRGB(42, 42, 42);
moduleButtonTemplate.TextSize = 18.000;
moduleButtonTemplate.TextXAlignment = Enum.TextXAlignment.Left;
	
UIPadding_5.Parent = moduleButtonTemplate;
UIPadding_5.PaddingLeft = UDim.new(0, 10);
	
panelTemplate.Name = "panelTemplate";
panelTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
panelTemplate.BackgroundTransparency = 1.000;
panelTemplate.BorderSizePixel = 0;
panelTemplate.Size = UDim2.new(0, 225, 0, 350);
panelTemplate.Visible = false;
	
MainFrame_2.Name = "MainFrame";
MainFrame_2.Parent = panelTemplate;
MainFrame_2.AnchorPoint = Vector2.new(0.5, 0.5);
MainFrame_2.BackgroundColor3 = Color3.fromRGB(250, 250, 250);
MainFrame_2.BorderSizePixel = 0;
MainFrame_2.Position = UDim2.new(0.5, 0, 0.5, 0);
MainFrame_2.Size = UDim2.new(1, 0, 1, 0);
	
modsList.Name = "modsList";
modsList.Parent = MainFrame_2;
modsList.Active = true;
modsList.AnchorPoint = Vector2.new(0.5, 1);
modsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
modsList.BackgroundTransparency = 1.000;
modsList.BorderSizePixel = 0;
modsList.Position = UDim2.new(0.5, 0, 1, 0);
modsList.Size = UDim2.new(1, 0, 1, -50);
modsList.CanvasSize = UDim2.new(0, 0, 0, 0);
	
UIListLayout_2.Parent = modsList;
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder;
	
textTitle_2.Name = "textTitle";
textTitle_2.Parent = MainFrame_2;
textTitle_2.Active = true;
textTitle_2.AnchorPoint = Vector2.new(0.5, 0);
textTitle_2.BackgroundColor3 = Color3.fromRGB(239, 243, 249);
textTitle_2.BorderSizePixel = 0;
textTitle_2.Position = UDim2.new(0.5, 0, 0, 0);
textTitle_2.Size = UDim2.new(1, 0, 0, 50);
textTitle_2.Font = Enum.Font.Gotham;
textTitle_2.Text = "Template";
textTitle_2.TextColor3 = Color3.fromRGB(170, 170, 170);
textTitle_2.TextSize = 24.000;
textTitle_2.TextWrapped = true;
textTitle_2.TextXAlignment = Enum.TextXAlignment.Left;
	
UIPadding_6.Parent = textTitle_2;
UIPadding_6.PaddingLeft = UDim.new(0, 10);
	
PenumbraShadow_2.Name = "PenumbraShadow";
PenumbraShadow_2.Parent = panelTemplate;
PenumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5);
PenumbraShadow_2.BackgroundTransparency = 1.000;
PenumbraShadow_2.BorderSizePixel = 0;
PenumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 1);
PenumbraShadow_2.Size = UDim2.new(1, 16, 1, 16);
PenumbraShadow_2.ZIndex = 0;
PenumbraShadow_2.Image = "rbxassetid://1316045217";
PenumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0);
PenumbraShadow_2.ImageTransparency = 0.880;
PenumbraShadow_2.ScaleType = Enum.ScaleType.Slice;
PenumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118);

--[[
    FUNCTIONS
]]--
function isRunning(textLabelString)
	if (modulesRunning[textLabelString]) then
		return true;
	else
		return false;
	end;
end;
function createPanel(data)
	local Template = panelTemplate:Clone();
		
	Template.MainFrame.textTitle.Text = data.displayTitle;
	Template.Name = data.displayTitle;
	Template.Parent = modsMenu.panelsCore;
	Template.Visible = true;
		
	return Template;
end;
function createModule(panel, data)
	local Template = moduleButtonTemplate:Clone();
	
	Template.Text = data.displayTitle;
	Template.Name = data.displayTitle;
	Template.Parent = panel.MainFrame.modsList;
	Template.Visible = true;
	
	coroutine.wrap(function()	
		Template.MouseButton1Click:Connect(function()
            print(DogeDomain.."/modules/"..data.displayTitle..".lua")
            local moduleForTemplate;

            if (data.moduleType == "modules") then
                moduleForTemplate = loadstring(game:HttpGet(DogeDomain.."/modules/"..data.displayTitle..".lua"))();
            elseif (data.moduleType == "gamemodules") then
                moduleForTemplate = loadstring(game:HttpGet(DogeDomain.."/gamemodules/"..jelloModuleHolder.."/"..data.displayTitle..".lua"))();
            elseif (data.moduleType == "scripts") then
                moduleForTemplate = loadstring(readfile(data.modulePath))();
            end

			if (isRunning(Template.Name)) then
				Template.BackgroundColor3 = jelloColors.white;
				Template.TextColor3 = jelloColors.textBlack;

                modulesRunning[Template.Name] = nil;
                moduleForTemplate:onStop();
			else
				Template.BackgroundColor3 = jelloColors.hoverBlue;
				Template.TextColor3 = jelloColors.white;
				
                modulesRunning[Template.Name] = true;
                moduleForTemplate:onStart();
			end;
		end);
		Template.MouseEnter:Connect(function()
			if (isRunning(Template.Name)) then
				Template.BackgroundColor3 = jelloColors.hoverBlue;
				Template.TextColor3 = jelloColors.white;
			else
				Template.BackgroundColor3 = jelloColors.hoverWhite;
				Template.TextColor3 = jelloColors.textBlack;
			end;
		end);
		Template.MouseLeave:Connect(function()
			if (isRunning(Template.Name)) then
				Template.BackgroundColor3 = jelloColors.blue;
				Template.TextColor3 = jelloColors.white;
			else
				Template.BackgroundColor3 = jelloColors.white;
				Template.TextColor3 = jelloColors.textBlack;
			end;
		end);
	end)();
	
	return Template;
end;

coroutine.wrap(function()
    local tweenInfo = TweenInfo.new(0.15);
    local backBlur = Instance.new("BlurEffect", game.Lighting);
    backBlur.Size = 0;
	
    UserInputService.InputBegan:Connect(function(input, process)
	    if process then return end;
	    if DBs.rightShift then return end;
	    DBs.rightShift = true;
	
	    if (input.UserInputType == Enum.UserInputType.Keyboard) then
		    if (input.KeyCode == Enum.KeyCode.RightShift) then
			    if (modsMenu.Visible == true) then
				    local tween = TweenService:Create(backBlur, tweenInfo, {Size = 0});
				    tween:Play();
				    modsMenu.Visible = false;
			    else
				    local tween = TweenService:Create(backBlur, tweenInfo, {Size = 8});
				    tween:Play();
				    modsMenu.Visible = true;
			    end;
		    end;
	    end;
	
	    DBs.rightShift = false;
    end);
end)();

local panelGui = createPanel({
    ["displayTitle"] = "Gui"
});
local panelMiscellaneous = createPanel({
    ["displayTitle"] = "Miscellaneous"
});
local panelGame;
local panelScripts;

for i,v in pairs(dSupportedModules) do
    local panelType;
    if (v.moduleType == "Gui") then
        panelType = panelGui;
    elseif (v.moduleType == "Miscellaneous") then
        panelType = panelMiscellaneous;
    end;
    createModule(panelType, {
        ["displayTitle"] = v.moduleId,
        ["moduleType"] = "modules"
    });
end;

if (dSupportedGames["PGK."..game.PlaceId]) then
    jelloModuleHolder = dSupportedGames["PGK."..game.PlaceId].jelloModuleHolder;

    panelGame = createPanel({
        ["displayTitle"] = "Game"
    });

    for i,v in pairs(dSupportedGames["PGK."..game.PlaceId].jelloModules) do
        createModule(panelGame, {
            ["displayTitle"] = v.moduleId,
            ["moduleType"] = "gamemodules"
        })
    end;
end;

if (syn) then
    if (isfolder("DogeProd.Jello") == false) then
        makefolder("DogeProd.Jello");
    end;
    if (isfolder("DogeProd.Jello/Scripts") == false) then
        makefolder("DogeProd.Jello/Scripts");
    end;
    if (isfolder("DogeProd.Jello/AutoExe") == false) then
        makefolder("DogeProd.Jello/AutoExe");
    end;
    local Scripts = listfiles("DogeProd.Jello/Scripts");
    panelScripts = createPanel({
        ["displayTitle"] = "Scripts"
    });

    for i,v in pairs(Scripts) do
        local JelloModule = loadstring(readfile(v))();
        local JelloCore = JelloModule:getModuleData();
        createModule(panelScripts, {
            ["displayTitle"] = JelloCore.displayTitle,
            ["moduleType"] = "scripts",
            ["modulePath"] = v
        });
    end;
end;

if (syn) then
    syn.protect_gui(JelloScreen);
end
JelloScreen.Parent = game.CoreGui;