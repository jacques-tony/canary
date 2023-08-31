local reward = {
	container = 2854,
	commonItems = {
		{id = 16277, amount = 1},	-- Adventurer's stone
		-- Parchment
	--	{id = 2819, amount = 1, text = adventurersGuildText},
		{id = 3043, amount = 10}	-- Adventurer's stone
	},
	vocationItems = {
		-- Sorcerer  
		[14025] = { 
			{id = 3210, amount = 1},	-- hat of the mad
			{id = 8043, amount = 1},	-- focus cape
			{id = 645, amount = 1},	    -- blue legs
			{id = 3079, amount = 1},	-- boots of haste
			{id = 25700, amount = 1},	-- dream blossom staff
			{id = 8072, amount = 1}		-- Spellbook 
		},
		-- Druid
		[14026] = {
			{id = 3210, amount = 1},	-- hat of the mad
			{id = 8043, amount = 1},	-- focus cape
			{id = 645, amount = 1},	    -- blue legs
			{id = 3079, amount = 1},	-- boots of haste
			{id = 25700, amount = 1},	-- dream blossom staff
			{id = 8072, amount = 1}		-- Spellbook 
		},
		-- Paladin
		[14027] = {
			{id = 3385, amount = 1},	-- crown helmet
			{id = 3381, amount = 1},	-- crown armor
			{id = 3382, amount = 1},	-- crown legs
			{id = 3079, amount = 1},	-- boots of haste
			{id = 8027, amount = 1},	-- composite hornbow
			{id = 7367, amount = 1},	-- enchanted spear
			{id = 35562, amount = 1},	-- Quiver
			{id = 7365, amount = 100}	-- onyx Arrows
		},
		-- Knight
		[14028] = {
			{id = 3385, amount = 1},	-- crown helmet
			{id = 3381, amount = 1},	-- crown armor
			{id = 3382, amount = 1},	-- crown legs
			{id = 3079, amount = 1},	-- boots of haste
			{id = 7383, amount = 1},	-- Relic Sword
			{id = 7409, amount = 1},	-- Northern Star
			{id = 7411, amount = 1},	-- ornamented axe
			{id = 3419, amount = 1}		-- crown shield
		}
	}
}

local vocationReward = Action()

function vocationReward.onUse(player, item, fromPosition, itemEx, toPosition)
    local vocationItems = reward.vocationItems[item.uid]
    -- Check there is items for item.uid
    if not vocationItems then
        return true
    end
    -- Check quest storage
    if player:getStorageValue(102030) == 1 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The " .. item:getName() .. " is empty.")
        return true
    end
    -- Calculate reward weight
    local rewardsWeight = ItemType(reward.container):getWeight()
    for i = 1, #vocationItems do
        rewardsWeight = rewardsWeight + (ItemType(vocationItems[i].id):getWeight() * vocationItems[i].amount)
    end
    for i = 1, #reward.commonItems do
        rewardsWeight = rewardsWeight + (ItemType(reward.commonItems[i].id):getWeight() * reward.commonItems[i].amount)
    end   
    -- Check if enough weight capacity
    if player:getFreeCapacity() < rewardsWeight then
        player:sendTextMessage(
            MESSAGE_EVENT_ADVANCE,
            "You have found a " .. getItemName(reward.container) ..
            ". Weighing " .. (rewardsWeight / 100) .. " oz it is too heavy."
        )
        return true
    end
    -- Check if enough free slots
    if player:getFreeBackpackSlots() < 1 then
        player:sendTextMessage(
            MESSAGE_EVENT_ADVANCE,
            "You have found a " .. getItemName(reward.container) .. ". There is no room."
        )
        return true
    end
    -- Create reward container
    local container = Game.createItem(reward.container)
    -- Iterate in inverse order due on addItem/addItemEx by default its added at first index
    -- Add common items
    for i = #reward.commonItems, 1, -1 do
        if reward.commonItems[i].text then
            -- Create item to customize
            local document = Game.createItem(reward.commonItems[i].id)
            document:setAttribute(ITEM_ATTRIBUTE_TEXT, reward.commonItems[i].text)
            container:addItemEx(document)
        else
            container:addItem(reward.commonItems[i].id, reward.commonItems[i].amount)
        end
    end   
    -- Add vocation items
    for i = #vocationItems, 1, -1 do
        container:addItem(vocationItems[i].id, vocationItems[i].amount)
    end
    -- Ensure reward was added properly to player
    if player:addItemEx(container, false, CONST_SLOT_WHEREEVER) == RETURNVALUE_NOERROR then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. container:getName() .. ".")
        player:setStorageValue(102030, 1)
    end
    return true
end

for index, value in pairs(reward.vocationItems) do
    vocationReward:uid(index)
end

vocationReward:register()