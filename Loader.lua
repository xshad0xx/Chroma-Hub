local games = {
    [{155615604}] = "", -- Prison Life
    [{7187504655}] = "" -- Rock Simulator
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))(); break
    end
end