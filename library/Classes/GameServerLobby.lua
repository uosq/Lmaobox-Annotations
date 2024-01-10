---@meta

---The GameServerLobby library provides information about the current match made game.
---@class GameServerLobby
local GameServerLobby = {}

---Returns the group ID of the current lobby.
---@return integer
function GameServerLobby:GetGroupID() end

---Returns a table of LobbyPlayer objects representing the players in the lobby.
---@return LobbyPlayer[]
function GameServerLobby:GetMembers() end
