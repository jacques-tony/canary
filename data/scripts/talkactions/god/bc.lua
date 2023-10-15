local talk = TalkAction("/bc")

function talk.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	
	if param == "" then
		player:sendCancelMessage("Command param required.")
		return false
	end

	print("> " .. player:getName() .. " broadcasted: \"" .. param .. "\".")
	Game.broadcastMessage(param, MESSAGE_STATUS_WARNING)
	return false
end

talk:separator(" ")
talk:groupType("god")
talk:register()
