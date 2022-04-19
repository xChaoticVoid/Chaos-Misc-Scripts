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
	Text = "Criminality",
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

GUI:Credit{
	Name = "Kiriot22",
	Description = "KiriotHub's ESP lib",
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
	Name = "Atm Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.atm = state
    end
}

Tab:Toggle{
	Name = "Dealer Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.dealer = state
    end
}

Tab:Toggle{
	Name = "SpawnedTools Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.bitch = state
    end
}

Tab:Toggle{
	Name = "SpawnedPiles Esp",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        ESP.dick = state
    end
}

local Tab = GUI:Tab{
	Name = "Discord",
	Icon = "rbxthumb://type=Asset&id=9334666836&w=150&h=150"
}

Tab:Button{
	Name = "Copy Discord Server Invite",
	Description = nil,
	Callback = function()
        GUI:Notification{
            Title = "Discord",
            Text = "Discord Invite Has Been Copied!",
            Duration = 3,
            Callback = function() end
        }
        setclipboard("https://discord.gg/wk7Wer9rGk")
    end
}

ESP:AddObjectListener(game:GetService("Workspace").Map.ATMz, {
    Color =  Color3.new(1,1,0),
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild("MainPart")
        while not hrp do
            wait()
            hrp = obj:FindFirstChild("MainPart")
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    IsEnabled = "atm",
})

ESP:AddObjectListener(game:GetService("Workspace").Map.Shopz, {
    Color =  Color3.new(1,1,0),
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild("MainPart")
        while not hrp do
            wait()
            hrp = obj:FindFirstChild("MainPart")
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    IsEnabled = "dealer",
})

ESP:AddObjectListener(game:GetService("Workspace").Filter.SpawnedTools, {
    Color =  Color3.new(1,1,0),
    Type = "Model",
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
    IsEnabled = "bitch",
})

ESP:AddObjectListener(game:GetService("Workspace").Filter.SpawnedPiles, {
    Color =  Color3.new(1,1,0),
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild("MeshPart")
        while not hrp do
            wait()
            hrp = obj:FindFirstChild("MeshPart")
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    IsEnabled = "dick",
})