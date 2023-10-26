-- Open forge window
local forge = TalkAction("!openforge")

function forge.onSay(player, words, param)
	-- create log
	logCommand(player, words, param)

	local requiredStorage = 12222

	if player:getStorageValue(requiredStorage) == 1 then
		return player:openForge()
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Você não possui o storage necessário para usar o comando '!openforge'.")
	end
end

forge:groupType("normal")
forge:register()