local Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()

Inviter.Join("https://dsc.gg/bruhmasu")

local games = {
    [{155615604}] = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/PrisonLife/Script.lua",
    [{7187504655}] = "https://raw.githubusercontent.com/xshad0xx/Chroma-Hub/main/RockSimulator/Script.lua"
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))(); break
    end
end