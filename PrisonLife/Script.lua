local Libraries = {
    Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))(),
    Vynixius = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))(),
    Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
}

local Window = Libraries.Vynixius:AddWindow({
    title = {"Chroma Hub", "Prison Life"},
    theme = {
        Accent = Color3.fromRGB(67, 171, 32)
    },
    default = true
})

local LocalPlayerTab = Window:AddTab("LocalPlayer", {default = true})
local GunTab = Window:AddTab("Gun", {default = false})
local ExtraTab = Window:AddTab("Extra", {default = false})

local LocalPlayerMainSection = LocalPlayerTab:AddSection("Main", {default = false})
local GunMainSection = GunTab:AddSection("Main", {default = false})
local ExtraCreditsSection = ExtraTab:AddSection("Credits", {default = true})
local ExtraMainSection = ExtraTab:AddSection("Main", {default = false})

-- Services

local players = game:GetService("Players")
local workspace = game:GetService("Workspace")

-- Variables

local localPlayer = players.LocalPlayer

-- Local Player Tab

local walkSpeedSlider = LocalPlayerMainSection:AddSlider("WalkSpeed", 16, 250, 16, {toggleable = false, default = false}, function(value)
    localPlayer.Character.Humanoid.WalkSpeed = value
end)

local jumpPowerSlider = LocalPlayerMainSection:AddSlider("JumpPower", 16, 250, 16, {toggleable = false, default = false}, function(value)
    localPlayer.Character.Humanoid.JumpPower = value
end)

-- Gun Tab

local GiveGunDropdown = GunMainSection:AddDropdown("Give Gun", {"M9", "Remington 870", "AK-47"}, {default = "None"}, function(value)
    local A_1 = workspace["Prison_ITEMS"].giver[value].ITEMPICKUP
    local ItemHandler = workspace.Remote.ItemHandler

    ItemHandler:InvokeServer(A_1)
end)

local GunModDropdown = GunMainSection:AddDropdown("Apply Gun Modifications", {"M9", "Remington 870", "AK-47", "Taser"}, {default = "None"}, function(value)
    local module

    if localPlayer.Backpack:FindFirstChild(value) then
        module = require(localPlayer.Backpack[value].GunStates)
    elseif localPlayer.Chracter:FindFirstChild(value) then
        module = require(localPlayer.Character[value].GunStates)
    end

    if module ~= nil then
        module["MaxAmmo"] = math.huge
        module["CurrentAmmo"] = math.huge
        module["StoredAmmo"] = math.huge
        module["ReloadTime"] = 0.000001
    end
end)

-- Extra Tab

ExtraCreditsSection:AddDualLabel({
    "Scripting",
    "xshad0xx|Masu|EgypticMoon"
})

local windowKeyBind = ExtraMainSection:AddBind("Toggle UI Key", "None", {}, function(value)
    Window:SetKey(value)
end)