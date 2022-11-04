-- Gui to Lua
-- Version: 3.2

-- Instances:

local chromahubintro = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local background = Instance.new("Frame")
local corner = Instance.new("UICorner")
local top = Instance.new("Frame")
local corner_2 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local container = Instance.new("Frame")
local load = Instance.new("TextButton")
local corner_3 = Instance.new("UICorner")
local credits = Instance.new("TextLabel")
local information = Instance.new("TextLabel")

--Properties:

chromahubintro.Name = "chromahubintro"
chromahubintro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
chromahubintro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe.Name = "mainframe"
mainframe.Parent = chromahubintro
mainframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframe.BackgroundTransparency = 1.000
mainframe.Position = UDim2.new(0.369415522, 0, 0.280898869, 0)
mainframe.Size = UDim2.new(0, 500, 0, 350)
mainframe.Active = true
mainframe.Draggable = true

background.Name = "background"
background.Parent = mainframe
background.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
background.Position = UDim2.new(-0.00200000009, 0, 0, 0)
background.Size = UDim2.new(0, 500, 0, 0)
background.Visible = false

corner.CornerRadius = UDim.new(0, 4)
corner.Name = "corner"
corner.Parent = background

top.Name = "top"
top.Parent = mainframe
top.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
top.Size = UDim2.new(0, 0, 0, 33)
top.Visible = false

corner_2.CornerRadius = UDim.new(0, 4)
corner_2.Name = "corner"
corner_2.Parent = top

title.Name = "title"
title.Parent = top
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0140000004, 0, 0, 0)
title.Size = UDim2.new(0, 485, 0, 33)
title.Visible = false
title.Font = Enum.Font.SourceSansSemibold
title.Text = "Chroma Hub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18.000
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

close.Name = "close"
close.Parent = top
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.934000015, 0, 0, 0)
close.Size = UDim2.new(0, 33, 0, 33)
close.Visible = false
close.Font = Enum.Font.SourceSansSemibold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 22.000
close.TextWrapped = true

container.Name = "container"
container.Parent = mainframe
container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
container.BackgroundTransparency = 1.000
container.Size = UDim2.new(0, 500, 0, 350)
container.Visible = false

load.Name = "load"
load.Parent = container
load.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
load.Position = UDim2.new(0.100000001, 0, 0.379999995, 0)
load.Size = UDim2.new(0, 400, 0, 84)
load.Font = Enum.Font.SourceSansSemibold
load.Text = "Load"
load.TextColor3 = Color3.fromRGB(255, 255, 255)
load.TextSize = 45.000
load.TextWrapped = true

corner_3.CornerRadius = UDim.new(0, 7)
corner_3.Name = "corner"
corner_3.Parent = load

credits.Name = "credits"
credits.Parent = container
credits.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0.100000001, 0, 0.854285717, 0)
credits.Size = UDim2.new(0, 400, 0, 31)
credits.Font = Enum.Font.SourceSansSemibold
credits.Text = "xshad0xx, Shad0x, Masu, EgypticMoon"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextSize = 28.000

information.Name = "information"
information.Parent = container
information.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
information.BackgroundTransparency = 1.000
information.Position = UDim2.new(0.100000001, 0, 0.128571436, 0)
information.Size = UDim2.new(0, 400, 0, 34)
information.Font = Enum.Font.SourceSansSemibold
information.Text = "Chroma Hub is a Roblox Script Hub for Exploiting in games! Press the Load button below to load Chroma Hub!"
information.TextColor3 = Color3.fromRGB(255, 255, 255)
information.TextScaled = true
information.TextSize = 26.000
information.TextWrapped = true

-- Scripts:

local function DDYC_fake_script() -- close.LocalScript 
local script = Instance.new('LocalScript', close)

local time = 0.3
local main = script.Parent.Parent.Parent.Parent.mainframe

main.Visible = true
main.top.Visible = true
main.top:TweenSize(UDim2.new(0, 499, 0, 33), "InOut", "Linear", time)
wait(time)
main.background.Visible = true
main.background:TweenSize(UDim2.new(0, 500, 0, 350), "InOut", "Linear", time)
wait(time)
main.top.title.Visible = true
main.top.close.Visible = true
main.container.Visible = true

script.Parent.MouseButton1Down:Connect(function()
if main.Visible == false then
main.Visible = true
main.top.Visible = true
main.top:TweenSize(UDim2.new(0, 499, 0, 33), "InOut", "Linear", time)
wait(time)
main.background.Visible = true
main.background:TweenSize(UDim2.new(0, 500, 0, 350), "InOut", "Linear", time)
wait(time)
main.top.title.Visible = true
main.top.close.Visible = true
main.container.Visible = true
else
main.container.Visible = false
main.top.title.Visible = false
main.top.close.Visible = false
main.background:TweenSize(UDim2.new(0, 500, 0, 0), "InOut", "Linear", time)
wait(time)
main.background.Visible = false
main.top:TweenSize(UDim2.new(0, 0, 0, 33), "InOut", "Linear", time)
wait(time)
main.top.Visible = false
main.Visible = false
end
end)
end
coroutine.wrap(DDYC_fake_script)()
local function ZNOYF_fake_script() -- load.LocalScript 
local script = Instance.new('LocalScript', load)

local time = 0.3
local main = script.Parent.Parent.Parent.Parent.mainframe

script.Parent.MouseButton1Down:Connect(function()
if main.Visible == false then
main.Visible = true
main.top.Visible = true
main.top:TweenSize(UDim2.new(0, 499, 0, 33), "InOut", "Linear", time)
wait(time)
main.background.Visible = true
main.background:TweenSize(UDim2.new(0, 500, 0, 350), "InOut", "Linear", time)
wait(time)
main.top.title.Visible = true
main.top.close.Visible = true
main.container.Visible = true
else
main.container.Visible = false
main.top.title.Visible = false
main.top.close.Visible = false
main.background:TweenSize(UDim2.new(0, 500, 0, 0), "InOut", "Linear", time)
wait(time)
main.background.Visible = false
main.top:TweenSize(UDim2.new(0, 0, 0, 33), "InOut", "Linear", time)
wait(time)
main.top.Visible = false
main.Visible = false
end

wait(time)

loadstring(game:HttpGet("https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/Loader.lua"))()
end)
end
coroutine.wrap(ZNOYF_fake_script)()