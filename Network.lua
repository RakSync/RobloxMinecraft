local HttpService = game:GetService("HttpService")
local url = ""
// Set Url to the IP Address and port of your server. example: 0.0.0.0:19132
local data = {
    player = "",
  // Set the player to name of a player
    message = "Hello from Roblox!"
}
local jsonData = HttpService:JSONEncode(data)
HttpService:PostAsync(url, jsonData)
