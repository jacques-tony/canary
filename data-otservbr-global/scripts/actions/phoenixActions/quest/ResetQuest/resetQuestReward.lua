	local action_aid, movement_aid, storage = 3256, 3257, 67606

	local action = Action()
	function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		if player:getStorageValue(storage) == 1 then
--		player:sendTextMessage(MESSAGE_INFO_DESCR, "Unravel the message of the book.")
		return false
	end

		player:setStorageValue(storage, 1)
		player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations on your achievement, you now have permission to reset your character.")
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
			creature:teleportTo(Position(17548, 17819, 11))
			player:sendCancelMessage("Get your reward early.")
			return true
		end

--		player:sendTextMessage(MESSAGE_INFO_DESCR, "You already got your reward.")
		return true
	end
	movement:aid(movement_aid)
	movement:register()
