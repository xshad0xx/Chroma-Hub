local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Vynixius = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()

local Notifications = {
    "Orion",
    "Venyx",
    "Vynixius"
}

local Venyx_C_UI

local notificationSoundChroma = Instance.new("Sound", game.CoreGui)
notificationSoundChroma.Name = "ChromaNotificationSound"

Notifications["Vynixius"] = function(name, content, time, col, call)
    if name == nil then
        name = "Placeholder"
    end

    if content == nil then
        content = "Placeholder"
    end

    if time == nil then
        time = 5
    end

    if col == nil then
        col = Color3.fromRGB(67, 171, 32)
    end

    if call == nil then
        call = function(bool)
            print(bool)
        end
    end

    Vynixius:Notify({
        title = name,
        text = content,
        duration = time,
        color = col,
        callback = call
    })
end

Notifications["Venyx"] = function(ui, name, content, callback)
    if ui == nil then 
        ui = Venyx_C_UI
    end

    if name == nil then
        name = "Placeholder"
    end

    if content == nil then
        content = "Placeholder"
    end

    if callback == nil then
        callback = function(value)
            print("bruh no callback for that thing")
        end
    end

    ui:Notify({
        title = name,
        text = content,
        callback = callback
    })
end

Notifications["Orion"] = function(sound, soundId, title, text, icon)
    if soundId == nil then
        soundId = "rbxassetid://3023237993"
    end

    if sound and sound ~= nil then
        notificationSoundChroma.SoundId = soundId
        notificationSoundChroma.Volume = 1
        notificationSoundChroma:Play()
    end

    if title == nil then
        title = "Chroma Hub"
    end

    if text == nil then
        text = "No Text Defined"
    end

    if icon == nil then
        icon = "rbxassetid://4483345998"
    end

    Orion:MakeNotification({
        Name = title,
        Content = text,
        Image = icon,
        Time = 5
    })
end