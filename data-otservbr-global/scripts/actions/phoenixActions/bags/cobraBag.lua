local rewards = {
	{ id = 30393, name = "Cobra Crossbow" },
	{ id = 31631, name = "Cobra Amulet" },
	{ id = 30394, name = "Cobra Boots" },
	{ id = 30395, name = "Cobra Club" },
	{ id = 30396, name = "Cobra Axe" },
	{ id = 30397, name = "Cobra Hood" },
	{ id = 30398, name = "Cobra Sword" },
	{ id = 30399, name = "Cobra Wand" },
	{ id = 30400, name = "Cobra Rod" },	
}

CobraBagId = 55059
local cobraBag = Action()

function cobraBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

cobraBag:id(CobraBagId)
cobraBag:register()
