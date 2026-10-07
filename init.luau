local supportedGames = {
    [2809202155] = "https://gist.githubusercontent.com/dddddddd180/1fb54be49612f551d6c33163e7641cf7/raw/9a1e0a80b4e93fa54638048011007d48011b1a23/erx.lua",
}

local currentPlaceId = game.PlaceId
local scriptUrl = supportedGames[currentPlaceId]

if scriptUrl then
    local success, result = pcall(function()
        return loadstring(game:HttpGet(scriptUrl))()
    end)
    
    if not success then
        warn("Error loading script: " .. tostring(result))
    end
else
    print("not supported game")
end
