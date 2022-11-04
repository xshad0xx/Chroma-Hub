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

local ScriptsTab = Window.New({
    Title = "Scripts"
})

local workspace = game.Workspace
local plr = game.Players.LocalPlayer

getgenv().farm = false
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

AutoTab.Toggle({
    Text = "Auto Farm",
    Callback = function(value)
        getgenv().farm = value

        repeat
            if getgenv().farm then
                local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(7),
                {CFrame =CFrame.new(-9.4971323, 39.9823875, -1051.51807, 0.985789657, -0.00746125402, -0.16781877, -0.00396866864, 0.997699857,
                -0.0676704049, 0.167937666, 0.0673748031, 0.983492553)})
                tween:Play()
                tween.Completed:Wait()
                wait(1)
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0.88348788, 230.699554, 982.310242, -0.999389589,
                -0.000123913429, 0.0349354483, -0.000140547054, 0.999999881, -0.000473669439, -0.034935385, -0.000478290371, -0.99938947)
                wait(5)
            end
        until getgenv().farm == false
    end
})

TeleportTab.Button({
    Text = "Researcher Room",
    Callback = function()
        plr.Character:SetPrimaryPartCFrame(CFrame.new(8, 210, 996))
    end
})

TeleportTab.Button({
    Text = "Spawn",
    Callback = function()
        plr.Character:SetPrimaryPartCFrame(CFrame.new(31, 123, 933))
    end
})

ScriptsTab.Button({
    Text = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

ScriptsTab.Button({
    Text = "Unnamed ESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
    end
})