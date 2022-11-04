game.StarterGui:SetCore("SendNotification",{
    Title = "Unsupported Game",
    Text = "This Game Isn't Supported! Loading Universal Script...",
    Duration = 10,
    Button1 = "OK"
})

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua',true))()