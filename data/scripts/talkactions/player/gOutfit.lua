local talk = TalkAction("!go")
local config = { 
	delay = 1, -- minutos
	check = true -- delay ativado ou nao

}

function talk.onSay(player, words, param)
	local guild = player:getGuild()
	
	if not guild then
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You are no member of a guild.")
	return false
	end

	local gmembers = guild:getMembersOnline()
	local leaderLook, memberLook

	if player:getGuildLevel() < 3 then
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You are not the guild leader.")
		return false
	end
	if player:getStorageValue(551253) > os.time() and config.check then
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You are exhausted. Please wait " .. player:getStorageValue(551253)-os.time() .. " seconds." )
		return false
	end

	for _, member in ipairs(gmembers) do
		if member:getGuildLevel() >= 3 then
			leaderLook = member:getOutfit()
		end
	end
	for _, member in ipairs(gmembers) do
		memberLook = member:getOutfit()
		memberLook.lookHead = leaderLook.lookHead
		memberLook.lookBody = leaderLook.lookBody
		memberLook.lookLegs = leaderLook.lookLegs
		memberLook.lookFeet = leaderLook.lookFeet
		member:setOutfit(memberLook)
        member:sendTextMessage(MESSAGE_STATUS_DEFAULT, "Guild Leader changed outfits!" )
	end
	player:setStorageValue(551253, os.time() + (config.delay*60))
	return false
end

talk:groupType("normal")
talk:separator(" ")
talk:register()