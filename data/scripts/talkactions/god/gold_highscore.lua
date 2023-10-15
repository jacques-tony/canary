local gold_rank = TalkAction("!goldrank")
local delay = 3441669
function gold_rank.onSay(player, words, param)

	--[[if not player:getGroup():getAccess() then
		return true
	end

	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end

	logCommand(player, words, param)]]--

	if player:getStorageValue(delay) < os.time() then
		local resultId = db.storeQuery("SELECT `balance`, `name` FROM `players` WHERE group_id < 3 ORDER BY balance DESC LIMIT 10")
		if resultId ~= false then
			local str = ""
			local x = 0
			repeat
				x = x + 1
					str = str.."\n"..x.."- "..result.getDataString(resultId, "name").." ("..result.getDataInt(resultId, "balance")..")."
			until not result.next(resultId)
			result.free(resultId)
			if str == "" then
				str = "No highscore to show."
			end
			player:popupFYI("Current gold highscore for PhoenixOT\n" .. str)
		else
			player:sendCancelMessage("No highscore to show.")
		end
		player:setStorageValue(delay, 60 + os.time())
	else
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:sendCancelMessage("Please wait a few seconds.")
	end
return true
end

gold_rank:separator(" ")
gold_rank:groupType("god")
gold_rank:register()
