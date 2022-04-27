local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "ChaosHub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

GUI:Notification{
	Title = "Game Detected",
	Text = "raise a floppa",
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
	Name = "Main",
	Icon = "rbxthumb://type=Asset&id=3517717568&w=150&h=150"
}

Tab:Toggle{
	Name = "Auto Click",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
    getgenv().click = true
    if state then
        while getgenv().click == true do
            for i ,v in pairs(game:GetService("Workspace").Floppa:GetChildren()) do
                if v.Name == "ClickDetector" then
                    fireclickdetector(v)
                end
            end
            wait()
            end
        else
            getgenv().click = false
        end  
end
}

Tab:Toggle{
	Name = "Auto Collect Money",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
    getgenv().money = true
    if state then
        while getgenv().money == true do
            for i ,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Money" or v.Name == "Money Bag" and v:FindFirstChild('TouchInterest') then
                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v, 0)
            end
            end
            wait()
            end
        else
            getgenv().money = false 
        end
    end
}

Tab:Toggle{
	Name = "Auto Fill Bowl(Equip Food First)",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
    getgenv().food = state
    if state then
    food()
    end
    end
}

Tab:Button{
	Name = "Buy Food",
	Description = nil,
	Callback = function()
    bfood()
    end
}

local Tab = GUI:Tab{
	Name = "Misc",
	Icon = "rbxthumb://type=Asset&id=3331928717&w=150&h=150"
}

Tab:Button{
	Name = "Buy Cool Hat",
	Description = nil,
	Callback = function()
    hat()
    end
}

Tab:Button{
	Name = "Buy Scratching Post",
	Description = nil,
	Callback = function()
    post()
    end
}

Tab:Button{
	Name = "Buy Cat Bed",
	Description = nil,
	Callback = function()
    bfood()
    end
}

Tab:Button{
	Name = "Buy Ms. Floppa",
	Description = nil,
	Callback = function()
    wife()
    end
}

Tab:Button{
	Name = "Buy Divorce Papers",
	Description = nil,
	Callback = function()
    sad()
    end
}

Tab:Button{
	Name = "Buy Baby Bowl",
	Description = nil,
	Callback = function()
    bowl()
    end
}

Tab:Button{
	Name = "Buy Catnip Plant",
	Description = nil,
	Callback = function()
    plant()
    end
}

Tab:Button{
	Name = "Buy Sogga",
	Description = nil,
	Callback = function()
    bitch()
    end
}

Tab:Button{
	Name = "Buy Bingus",
	Description = nil,
	Callback = function()
    dog()
    end
}

Tab:Button{
	Name = "Buy Neko Maid",
	Description = nil,
	Callback = function()
    maid()
    end
}

Tab:Button{
	Name = "Buy Altar",
	Description = nil,
	Callback = function()
    god()
    end
}

Tab:Button{
	Name = "Buy Neko Maid 2.0",
	Description = nil,
	Callback = function()
    neko()
    end
}

local Tab = GUI:Tab{
	Name = "Player",
	Icon = "rbxthumb://type=Asset&id=8797391505&w=150&h=150"
}

Tab:Slider{
	Name = "Walk Speed",
	Default = 50,
	Min = 0,
	Max = 200,
	Callback = function(speed) 
        pcall(function()
			game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end)
    end
}

Tab:Slider{
	Name = "Jump Power",
	Default = 50,
	Min = 0,
	Max = 200,
	Callback = function(jump) 
        pcall(function()
			game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = jump
        end)
    end
}

Tab:Slider{
	Name = "Gravity",
	Default = 50,
	Min = 0,
	Max = 200,
	Callback = function(text) 
            workspace.Gravity = text
    end
}

Tab:Button{
	Name = "Inf Jump",
	Description = nil,
	Callback = function() 
    local infjump = true
    game:GetService("UserInputService").JumpRequest:connect(function()
    if infjump then
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
   end
end)
end
}

Tab:Toggle{
	Name = "Noclip",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
    if state then
local noclip = true
char = game.Players.LocalPlayer.Character
while true do
if noclip == true then
for _,v in pairs(char:children()) do
pcall(function()
if v.className == "Part" then
v.CanCollide = false
end
end)
end
end
game:service("RunService").Stepped:wait()
end
else
local noclip = true
char = game.Players.LocalPlayer.Character
while true do
if noclip == true then
for _,v in pairs(char:children()) do
pcall(function()
if v.className == "Part" then
v.CanCollide = true
end
end)
end
end
game:service("RunService").Stepped:wait()
end
end
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

local player = game.Players.LocalPlayer.Character.HumanoidRootPart

function food()
while getgenv().food == true do
for i ,v in pairs(game:GetService("Workspace").Bowl:GetDescendants()) do
  if v.Name == "Part" then
      player.CFrame = v.CFrame
      if v:FindFirstChild("ProximityPrompt") then
      fireproximityprompt(v.ProximityPrompt)
  end
end
end
wait()
end
end

function bfood()
local ohString1 = "Floppa Food"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function hat()
local ohString1 = "Cool Hat"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function post()
local ohString1 = "Scratching Post"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function bed()
local ohString1 = "Cat Bed"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function wife()
local ohString1 = "Ms. Floppa"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function sad()
local ohString1 = "Divorce Papers"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function bowl()
local ohString1 = "Baby Bowl"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function plant()
local ohString1 = "Catnip Plant"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function bitch()
local ohString1 = "Sogga"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function dog()
local ohString1 = "Bingus"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function maid()
local ohString1 = "Neko Maid"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function god()
local ohString1 = "Altar"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end

function neko()
local ohString1 = "Neko Maid 2.0"
game:GetService("ReplicatedStorage").Purchase:FireServer(ohString1)
end