local Library = loadstring(game:HttpGet("http://45.131.66.129/RbxUILibraries/MaterialKindOfRemake.lua"))()

local Window = Library.Load({
    Title = "Chroma Hub | Tsunami Game",
    Style = 1,
    SizeX = 300,
    SizeY = 350,
    Theme = "Mocha"
})

local PlayerTab = Window.New({
    Title = "Player"
})

local AutoTab = Window.New({
    Title = "Auto"
})

local TeleportTab = Window.New({
    Title = "Teleport"
})

local workspace = game.Workspace
local plr = game.Players.LocalPlayer

getgenv().pickup = false

PlayerTab.Slider({
    Text = "Walk Speed",
    Callback = function(value)
        plr.Character.Humanoid.WalkSpeed = value
    end,
    Min = 16,
    Max = 500,
    Def = 16
})

PlayerTab.Slider({
    Text = "Jump Power",
    Callback = function(value)
        plr.Character.Humanoid.JumpPower = value
    end,
    Min = 50,
    Max = 500,
    Def = 50
})

AutoTab.Toggle({
    Text = "Auto Pickup Coins",
    Callback = function(value)
        getgenv().pickup = value

        while getgenv().pickup do
            pcall(function()
                firetouchinterest(plr.Character:WaitForChild("Head"),
                workspace.CurrentPointCoins.CoinFolder.CoinCollision, 0)
            end)

            wait(0.000001)
        end
    end,
    Enabled = false
})

TeleportTab.Button({
    Text = "Researcher Room",
    Callback = function()
        plr.Character:SetPrimaryPartCFrame(CFrame.new(8, 210, 996))
    end
})

TeleportTab.Button({
    Text = "End",
    Callback = function()
        plr.Character:SetPrimaryPartCFrame(CFrame.new(-8, 45, -1021))
    end
})

TeleportTab.Button({
    Text = "Spawn",
    Callback = function()
        plr.Character:SetPrimaryPartCFrame(CFrame.new(31, 123, 933))
    end
})