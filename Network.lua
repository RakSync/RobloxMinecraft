local HttpService = game:GetService("HttpService")
local url = ""  -- Set Url to the IP Address and port of your server, e.g., "http://0.0.0.0:19132"
local data = {
    player = "",  -- Set the player to the name of a player
    message = "Hello from Roblox!"
}
local jsonData = HttpService:JSONEncode(data)

-- Sending the POST request
local success, response = pcall(function()
    return HttpService:PostAsync(url, jsonData)
end)

if success then
    print("Message sent successfully!")
else
    warn("Failed to send message: " .. response)
end
