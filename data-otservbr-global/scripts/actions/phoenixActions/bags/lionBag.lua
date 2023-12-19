local rewards = {
	{ id = 34150, name = "Lion Longbow" },
	{ id = 34151, name = "Lion Rod" },
	{ id = 34152, name = "Lion Wand" },
	{ id = 34153, name = "Lion Spellbook" },
	{ id = 34155, name = "Lion Longsword" },
	{ id = 34156, name = "Lion Spangenhelm" },
	{ id = 34157, name = "Lion Plate" },
	{ id = 34158, name = "Lion Amulet" },
	{ id = 34254, name = "Lion Hammer" },
	{ id = 34154, name = "Lion Shield" },
	{ id = 34253, name = "Lion Axe" },
}

LionBagId = 55061
local lionBag = Action()

function lionBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

lionBag:id(LionBagId)
lionBag:register()
