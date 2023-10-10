	local action_uid, movement_aid, storage = 2241, 2242, 57572

	local action = Action()
	function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		if player:getStorageValue(storage) == 1 then
--		player:sendTextMessage(MESSAGE_INFO_DESCR, "Unravel the message of the book.")
		return false
	end

		player:setStorageValue(storage, 1)
		player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Now you can use the crafting machine, make good use of it.")
		return true
	end
	action:uid(action_uid)
	action:register()

	local movement = MoveEvent()
	movement:type("stepin")
	function movement.onStepIn(creature, item, position, fromPosition)
		local player = Player(creature)
		if not player then
			return false
		end

		if player:getStorageValue(storage) == -1 then
			creature:teleportTo(Position(17563, 17566, 6))
			player:sendCancelMessage("You can't enter here yet")
			return true
		end

		player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations, you can now use the crafting machine!")
		return true
	end
	movement:aid(movement_aid)
	movement:register()
