local hunt200 = MoveEvent()
hunt200:type("stepin")

function hunt200.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel(cid) >= 200 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level 200.")
			creature:teleportTo(Position(17492, 17620, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true
end
 
hunt200:aid(26998)
hunt200:register()