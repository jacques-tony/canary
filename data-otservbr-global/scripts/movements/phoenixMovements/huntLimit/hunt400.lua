local hunt400 = MoveEvent()
hunt400:type("stepin")

function hunt400.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel(cid) >= 400 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level 400.")
			creature:teleportTo(Position(17492, 17621, 8))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true
end
 
hunt400:aid(26999)
hunt400:register()