local rewards = {
	{ id = 27449, name = "Blade Of Destruction" },
	{ id = 27450, name = "Slayer of Destruction" },
	{ id = 27451, name = "Axe of Destruction" },
	{ id = 27452, name = "Chopper Of Destruction" },
	{ id = 27453, name = "Mace Of Destruction" },
	{ id = 27454, name = "Hammer Of Destruction" },
	{ id = 27455, name = "Bow of Destruction" },
	{ id = 27456, name = "Crossbow Of Destruction" },
	{ id = 27457, name = "Wand of Destruction" },	
	{ id = 27458, name = "Rod of Destruction" },
}

DestructionBagId = 55058
local destructionBag = Action()

function destructionBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

destructionBag:id(DestructionBagId) 
destructionBag:register()
