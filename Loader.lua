setclipboard("https://dsc.gg/bruhmasu")

local count = 0

repeat
    warn("Check Out The Chroma Hub Discord Server! The Link Has Been Copied To Your Clipboard!")
    count = count + 1
until count == 3

local games = {
    [{155615604}] = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/PrisonLife/Script.lua",
    [{7187504655}] = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/RockSimulator/Script.lua",
    [{4893679160}] = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/BigBrainSim/Script.lua",
    [{7993293100}] = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/TsunamiGame/Script.lua"
}

local universal = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/Universal/Script.lua"

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))(); break
    --[[else
        loadstring(game:HttpGet(universal))()]]
    end
end