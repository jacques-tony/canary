local hunt600 = MoveEvent()
hunt600:type("stepin")

function hunt600.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel(cid) >= 600 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level 600.")
			creature:teleportTo(Position(17493, 17621, 9))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true
end
 
hunt600:aid(27000)
hunt600:register()