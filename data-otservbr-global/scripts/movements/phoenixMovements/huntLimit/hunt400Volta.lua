local hunt400Volta = MoveEvent()
hunt400Volta:type("stepin")

function hunt400Volta.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel() >= 400 then -- Corrigido o argumento da função getLevel()
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "you need to be level 400 to return here.")
        player:teleportTo(fromPosition) -- Corrigido o comando de teleporte
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true 
end

hunt400Volta:aid(46999)
hunt400Volta:register()
