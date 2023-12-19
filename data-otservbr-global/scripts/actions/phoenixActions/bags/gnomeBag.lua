local rewards = {
	{ id = 27647, name = "Gnome Helmet" },
	{ id = 27648, name = "Gnome Armor" },
	{ id = 27649, name = "Gnome Legs" },
	{ id = 27650, name = "Gnome Shield" },
	{ id = 27651, name = "Gnome Sword" },
}

GnomeBagId = 55056
local gnomeBag = Action()

function gnomeBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

gnomeBag:id(GnomeBagId)
gnomeBag:register()
