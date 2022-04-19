local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "Chaos",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

GUI:Notification{
	Title = "Game Detected",
	Text = "Stand Upright: Rebooted",
	Duration = 3,
	Callback = function() end
}

GUI:Notification{
	Title = "Discord",
	Text = "Make Sure To Join The Discord Server! :D",
	Duration = 3,
	Callback = function() end
}

GUI:Credit{
	Name = "Chaotic_Void",
	Description = "Hub Owner",
}

local Tab = GUI:Tab{
	Name = "Visuals",
	Icon = "rbxthumb://type=Asset&id=5219208999&w=150&h=150"
}

Tab:Toggle{
	Name = "Enable Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP:Toggle(state)
    end
}

Tab:Toggle{
	Name = "Enable Players",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.Players = state
    end
}

Tab:Toggle{
	Name = "Enable Boxes",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.Boxes = state
    end
}

Tab:Toggle{
	Name = "Enable Names",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.Names = state
    end
}

Tab:Toggle{
	Name = "Enable Tracers",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.Tracers = state
    end
}

Tab:Toggle{
	Name = "Item Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.item = state
    end
}


ESP:AddObjectListener(game:GetService("Workspace").Items, {
    Color =  Color3.new(1,1,0),
    Type = "Tool",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild("Handle")
        while not hrp do
            wait()
            hrp = obj:FindFirstChild("Handle")
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    IsEnabled = "item",
})