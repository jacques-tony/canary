local setting = {
    -- At what level can do the quest?
    requiredLevel = 100,
    -- Can it be done daily? true = yes, false = no
    daily = true,
    -- Do not change from here down
    centerDemonRoomPosition = { x = 17928, y = 17517, z = 10 },
    demonsPositions = {
        { x = 17926, y = 17515, z = 10 },
        { x = 17928, y = 17515, z = 10 },
        { x = 17927, y = 17519, z = 10 },
        { x = 17929, y = 17519, z = 10 },
        { x = 17930, y = 17517, z = 10 },
        { x = 17931, y = 17517, z = 10 },
    },
    playersPositions = {
        { fromPos = { x = 17932, y = 17529, z = 10 }, toPos = { x = 17929, y = 17517, z = 10 } },
        { fromPos = { x = 17931, y = 17529, z = 10 }, toPos = { x = 17928, y = 17517, z = 10 } },
        { fromPos = { x = 17930, y = 17529, z = 10 }, toPos = { x = 17927, y = 17517, z = 10 } },
        { fromPos = { x = 17929, y = 17529, z = 10 }, toPos = { x = 17926, y = 17517, z = 10 } },
    },
}

local lever = Action()

function lever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item.itemid == 2772 then
        -- Checks if you have the required players and if they have the required level
		local requiredPlayers = {}
		for i = 1, #setting.playersPositions do
			local creature = Tile(setting.playersPositions[i].fromPos):getTopCreature()
			if creature and creature:isPlayer() then
				if creature:getLevel() < setting.requiredLevel then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Players need to be level " .. setting.requiredLevel .. " or higher.")
					return true
				else
					table.insert(requiredPlayers, creature)
				end
			end
		end

       -- At least one player is required to start the quest
		if #requiredPlayers < 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "At least one player is required to start the quest.")
			return true
		end

        -- Checks if there are still players inside the room, if so, return true
        if roomIsOccupied(setting.centerDemonRoomPosition, true, 4, 4) then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A team is already inside the quest room.")
            return true
        end

        -- Create monsters
        for i = 1, #setting.demonsPositions do
            Game.createMonster("Angry Demon", setting.demonsPositions[i])
        end

        -- Get players from the tiles "playersPositions" and teleport to the demons room if all of the above requirements are met
		for i, requiredPlayer in ipairs(requiredPlayers) do
			local targetPos = setting.playersPositions[i].toPos
			requiredPlayer:teleportTo(targetPos)
			requiredPlayer:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		end
        item:transform(2773)
    elseif item.itemid == 2773 then
        -- If it has "daily = true" then it will execute this function
        if setting.daily then
            player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
            return true
        end
        -- Not be able to push the lever back if someone is still inside the monsters room
        if roomIsOccupied(setting.centerDemonRoomPosition, true, 4, 4) then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A team is already inside the quest room.")
            return true
        end
        -- Removes all monsters so that the next team can enter
        if Position.removeMonster(setting.centerDemonRoomPosition, 4, 4) then
            return true
        end
        item:transform(2772)
    end
    return true
end

lever:uid(30025)
lever:register()