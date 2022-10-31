local Libraries = {
    Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))(),
    Vynixius = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))(),
    Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
}

local Window = Libraries.Vynixius:AddWindow({
    title = {"Chroma Hub", "Rock Simulator"},
    theme = {
        Accent = Color3.fromRGB(129, 32, 171)
    },
    default = true
})

local LocalPlayerTab = Window:AddTab("LocalPlayer", {default = true})
local FarmTab = Window:AddTab("Farm", {default = false})
local OtherTab = Window:AddTab("Other", {default = false})
local SettingsTab = Window:AddTab("Settings", {default = false})

local LocalPlayerMainSection = LocalPlayerTab:AddSection("Main", {default = false})
local FarmMainSection = FarmTab:AddSection("Main", {default = false})
local OtherMainSection = OtherTab:AddSection("Main", {default = false})
local SettingsMainSection = SettingsTab:AddSection("Main", {default = false})

-- Services

local players = game:GetService("Players")
local workspace = game:GetService("Workspace")
local virtualUser = game:GetService("VirtualUser")

-- Variables

getgenv().autoFarm = false
getgenv().antiAFK = false

local localPlayer = players.LocalPlayer

-- Local Player Tab

--[[local customWalkSpeedToggle = LocalPlayerMainSection:AddToggle("Enable Custom WalkSpeed", {default = false}, function(bool) end)
local customJumpPowerToggle = LocalPlayerMainSection:AddToggle("Enable Custom JumpPower", {default = false}, function(bool) end)]]

local walkSpeedSlider = LocalPlayerMainSection:AddSlider("WalkSpeed", 16, 250, 16, {toggleable = false, default = false}, function(value)
    --if customWalkSpeedToggle.Bool then
        localPlayer.Character.Humanoid.WalkSpeed = value

        --[[while wait(0.0001) do
            localPlayer.Character.Humanoid.WalkSpeed = value
        end]]
    --end
end)

local jumpPowerSlider = LocalPlayerMainSection:AddSlider("JumpPower", 50, 250, 50, {toggleable = false, default = false}, function(value)
    --if customJumpPowerToggle.Bool then
        localPlayer.Character.Humanoid.JumpPower = value

        --[[while wait(0.0001) do
            localPlayer.Character.Humanoid.JumpPower = value
        end]]
    --end
end)

-- Farm Tab

local farmPowerDropdown = FarmMainSection:AddDropdown("AutoFarm Power", {"Strong", "Normal", "Low"}, {default = "Normal"}, function(selected) end)

local farmSpeedSlider = FarmMainSection:AddSlider("AutoFarm Speed", 0.0001, 3, 0.15, {toggleable = false, default = false}, function(value) end)

local AutoFarmToggle = FarmMainSection:AddToggle("Auto Farm", {default = false}, function(bool)
    getgenv().autoFarm = bool

    while getgenv().autoFarm do
        if farmPowerDropdown.Selected == "Strong" then
            workspace:WaitForChild("MainEvent").AddStrength57:FireServer()
        elseif farmPowerDropdown.Selected == "Normal" then
            workspace:WaitForChild("MainEvent").AddStrength33:FireServer()
        elseif farmPowerDropdown.Selected == "Low" then
            workspace:WaitForChild("MainEvent").AddStrength11:FireServer()
        end

        wait(farmSpeedSlider.Value)
    end
end)

-- Other Tab

local antiAFKToggle = OtherMainSection:AddToggle("AntiAFK", {default = false}, function(bool)
    getgenv().antiAFK = bool

    if getgenv().antiAFK then
        localPlayer.Idled:Connect(function()
            virtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            virtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    end
end)

-- Settings Tab

local windowKeyBind = SettingsMainSection:AddBind("Toggle UI Key", "None", {}, function(value)
    Window:SetKey(value)
end)