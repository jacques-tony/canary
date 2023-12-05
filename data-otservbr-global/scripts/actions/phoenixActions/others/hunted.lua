local hunted = Action()

local cfg = {
   top = 5,
   messagetype = MESSAGE_EVENT_DEFAULT,
   exhaust = 38
} 

function Player.sendHuntedPlayers(self)
 local targetPlayers = {}
 local msg = "********************************\nWANTED: \n\n"
 local resultId = db.storeQuery("SELECT `target_id`, `prize`, `killed`, `killer_id` FROM `PROCURADO` ORDER BY `dateAdded` DESC")
 local flag = false
 if resultId then
  repeat
    if result.getDataInt(resultId, "killed") < 1 and result.getDataInt(resultId, "killer_id") < 1 then
      flag = true
      local pid = result.getDataInt(resultId, "target_id")
      local prize = result.getDataInt(resultId, "prize")
      table.insert(targetPlayers, {pid, prize})
    end
  until not result.next(resultId)
   result.free(resultId)
  end
  for k, v in pairs(targetPlayers) do
      msg = msg .. "-> " .. getPlayerNameById(v[1]) .. " | Reward: " .. v[2] .. " gold tokens.\n"
  end
  if not flag then 
    msg = msg .. "No players are currently hunted.\n"
  end
  msg = msg .. "\n********************************\n\nAdd a hunted with the command:\n!hunt Name, gold token, 10-20\n\n*** The hunted player will lose 1 additional level when killed for every 10 gold tokens offered."
  self:showTextDialog(37338, msg)
end

function hunted.onUse(player, item, fromPosition, target, toPosition, isHotkey)
  if player:getStorageValue(cfg.exhaust) < os.time() then
    player:sendHuntedPlayers()
    player:setStorageValue(cfg.exhaust, os.time() + 5)
  end
  return true
end

hunted:id(31712)
hunted:register() 