local hunt200Volta = MoveEvent()
hunt200Volta:type("stepin")

function hunt200Volta.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel() >= 200 then -- Corrigido o argumento da função getLevel()
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "you need to be level 200 to return here.")
        player:teleportTo(fromPosition) -- Corrigido o comando de teleporte
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

hunt200Volta:aid(46998)
hunt200Volta:register()
