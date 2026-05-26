local R = "https://raw.githubusercontent.com/eyecmsl/soda/main/"
local M = loadstring(game:HttpGet(R .. "manifest.lua"))()
local id = tostring(game.PlaceId)
print("soda main " .. M.main .. " | game " .. id .. " v" .. (M.games[id] or "?"))
local function loadGame(p)
	local s, e = pcall(game.HttpGet, game, R .. "games/" .. p .. ".lua")
	assert(s, e)
	loadstring(e)()
end
local ok, _ = pcall(loadGame, id)
if not ok then loadGame("_Universal") end
