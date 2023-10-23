local hunt600Volta = MoveEvent()
hunt600Volta:type("stepin")

function hunt600Volta.onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	if not player then return true end
	local storage666 = 666

	if player:getLevel() >= 600 then -- Corrigido o argumento da função getLevel()
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Good Hunting!")
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "you need to be level 600 to return here.")
        player:teleportTo(fromPosition) -- Corrigido o comando de teleporte
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true 
end

hunt600Volta:aid(47000)
hunt600Volta:register()
