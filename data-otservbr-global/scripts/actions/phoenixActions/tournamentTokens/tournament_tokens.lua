local tournamentToken = Action()

function tournamentToken.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local tournamentCoins = 1
  db.query("UPDATE `accounts` SET `coins_transferable` = `coins_transferable` + '" .. tournamentCoins .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..tournamentCoins.." Online Phoenix Coins.")
  item:remove(1)
  return true
end

tournamentToken:id(19082)
tournamentToken:register()