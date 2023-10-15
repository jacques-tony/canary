local castleWar = MoveEvent()
castleWar:type("stepin")

function castleWar.onStepIn(creature, item, position, fromPosition)
	local player = Player(creature)
	if not player then return true end
	if item:getActionId() == 12124 then
		local guild = player:getGuild()

		local config = {
			msgDenied = "Your guild does not dominate this castle.",
			msgWelcome = "Welcome to Phoenix Castle!"
		} 
		
		if not guild then
		    player:teleportTo(Position(17586, 17564, 6))	
--          player:teleportTo(player:getTown():getTemplePosition())			
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have a Guild.")
			return true
		end
		
		local guildId = guild:getId() 

		if Game.getStorageValue(3560) == guildId then
			player:setStorageValue(40, 1)
			player:sendTextMessage(MESSAGE_INFO_DESCR, config.msgWelcome)
		else
		    player:teleportTo(Position(17586, 17564, 6))	
--          player:teleportTo(player:getTown():getTemplePosition())
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR, config.msgDenied)
		end 
	elseif item:getId() == 37462 then
		if player:getStorageValue(40) > 0 then
			player:setStorageValue(40, 0)
		end
	end
	
	return true
end

castleWar:aid(12124)
castleWar:register()






