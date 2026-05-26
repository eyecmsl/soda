local R = "https://raw.githubusercontent.com/eyecmsl/soda/main/"
local M = loadstring(game:HttpGet(R .. "manifest.lua"))()
local id = tostring(game.PlaceId)
print("soda main " .. M.main .. " | game " .. id .. " v" .. (M.games[id] or "?"))
local function get(u)
	return game:HttpGet(R .. "games/" .. u .. ".lua")
end
local ok, e = pcall(get, id)
loadstring((ok and e or get("_Universal")))()
