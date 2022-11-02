-- UI Liberry

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()

local WindowColor = Color3.fromRGB(168, 109, 8)

local Window = Library:AddWindow({
    title = {"Chroma Hub", "Big Brain Simulator🧠"},
    theme = {
        Accent = WindowColor
    },
    default = true
})

local LPTab = Window:AddTab("LocalPlayer", {default = true})
local FarmTab = Window:AddTab("Farm")
local OtherTab = Window:AddTab("Other")
local ExtraTab = Window:AddTab("Extra")

local LPMainSec = LPTab:AddSection("Main")

local FarmMainSec = FarmTab:AddSection("Main")

local OtherMainSec = OtherTab:AddSection("Main")

local ExtraCreditsSec = ExtraTab:AddSection("Credits", {default = true})
local ExtraMainSec = ExtraTab:AddSection("Main")

-- Services

local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local virtualUser game:GetService("VirtualUser")

-- Variables

getgenv().autoFarm = false
getgenv().antiAFK = false

local plr = players.LocalPlayer

-- LP Tab

LPMainSec:AddSlider("WalkSpeed", 16, 250, 16, {toggleable = false, default = false}, function(value)
    plr.Character.Humanoid.WalkSpeed = value
end)

LPMainSec:AddSlider("JumpPower", 50, 250, 50, {toggleable = false, default = false}, function(value)
    plr.Character.Humanoid.JumpPower = value
end)

-- Farm Tab

FarmMainSec:AddToggle("AutoFarm", {default = false}, function(bool)
    getgenv().autoFarm = bool

    while getgenv().autoFarm do
        replicatedStorage.Remotes.BookClicked:FireServer(plr.Settings.EquippedBook.Value)
        wait(0.0001)
    end
end)

-- Other Tab

OtherMainSec:AddToggle("AntiAFK", {default = false}, function(bool)
    getgenv().antiAFK = bool

    if getgenv().antiAFK then
        plr.Idled:Connect(function()
            virtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            virtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    end
end)

-- Extra Tab

ExtraCreditsSec:AddDualLabel({
    "Scripting",
    "xshad0xx|Masu|EgypticMoon"
})

ExtraMainSec:AddBind("Toggle UI Key", "None", {}, function(value)
    Window:SetKey(value)
end)