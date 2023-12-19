local rewards = {
	{ id = 36664, name = "Eldritch Bow" },
	{ id = 36667, name = "Eldritch Breeches" },
	{ id = 36657, name = "Eldritch Claymore" },
	{ id = 36670, name = "Eldritch Cowl" },
	{ id = 36663, name = "Eldritch Cuirass" },
	{ id = 36672, name = "Eldritch Folio" },
	{ id = 36661, name = "Eldritch Greataxe" },
	{ id = 36671, name = "Eldritch Hood" },	
	{ id = 36666, name = "Eldritch Quiver" },	
	{ id = 36674, name = "Eldritch Rod" },
	{ id = 36656, name = "Eldritch Shield" },
	{ id = 36673, name = "Eldritch Tome" },
	{ id = 36668, name = "Eldritch Wand" },
	{ id = 36659, name = "Eldritch Warmace" },
	{ id = 36665, name = "Gilded Eldritch Bow" },
	{ id = 36658, name = "Gilded Eldritch Claymore" },
	{ id = 36662, name = "Gilded Eldritch Greataxe" },
	{ id = 36675, name = "Gilded Eldritch Rod" },	
	{ id = 36669, name = "Gilded Eldritch Wand" },	
	{ id = 36660, name = "Gilded Eldritch Warmace" },	
}

EldritchBagBagId = 55057
local eldritchBag = Action()

function eldritchBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

eldritchBag:id(EldritchBagBagId)
eldritchBag:register()
