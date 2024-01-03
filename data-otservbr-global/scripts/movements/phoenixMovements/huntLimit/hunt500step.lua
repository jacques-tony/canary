local hunt500step = MoveEvent()
hunt500step:type("stepin")

function hunt500step.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel(cid) >= 500 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level 500.")
			creature:teleportTo(Position(17492, 17608, 6))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true
end
 
hunt500step:aid(37001)
hunt500step:register()