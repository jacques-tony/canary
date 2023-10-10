local hunt800 = MoveEvent()
hunt800:type("stepin")

function hunt800.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel(cid) >= 800 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level 800.")
			creature:teleportTo(Position(17492, 17621, 10))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true
end
 
hunt800:aid(27001)
hunt800:register()