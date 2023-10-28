local rewards = {
	{ id = 24954, name = "part of a rune I" },
	{ id = 24955, name = "part of a rune II" },
	{ id = 24956, name = "part of a rune III" },
	{ id = 24957, name = "part of a rune IV" },
	{ id = 24958, name = "part of a rune V" },
	{ id = 24959, name = "part of a rune VI" },
	
}

local bagRunes = Action()

function bagRunes.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not player then
		return false
	end
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received a " .. rewardItem.name .. ".")
	return true
end

bagRunes:id(24960)
bagRunes:register()
