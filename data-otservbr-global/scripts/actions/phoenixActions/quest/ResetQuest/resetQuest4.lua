	local action_aid, movement_aid, storage = 2256, 2257, 57603

	local action = Action()
	function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		if player:getStorageValue(storage) == 1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Unravel the message of the book.")
		return false
	end

		player:setStorageValue(storage, 1)
		player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Now you can continue your journey, unravel the message of the book.")
		return true
	end
	action:aid(action_aid)
	action:register()

	local movement = MoveEvent()
	movement:type("stepin")
	function movement.onStepIn(creature, item, position, fromPosition)
		local player = Player(creature)
		if not player then
			return false
		end

		if player:getStorageValue(storage) == -1 then
			creature:teleportTo(Position(18438, 17356, 15))
			player:sendCancelMessage("You can't enter here yet")
			return true
		end

		player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations, continue your journey.")
		return true
	end
	movement:aid(movement_aid)
	movement:register()