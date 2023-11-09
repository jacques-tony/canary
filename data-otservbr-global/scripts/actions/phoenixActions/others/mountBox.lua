local rewards = {
	{ id = 5907, name = "slingshot" },
	{ id = 12308, name = "reins" },
	{ id = 12260, name = "hunting horn" },
	{ id = 12318, name = "giant shrimp" },
	{ id = 12547, name = "diapason" },
	{ id = 12548, name = "bag of apple slices" },
	
	{ id = 16155, name = "decorative ribbon" },
	{ id = 12307, name = "harness" },
	{ id = 12546, name = "fist on a stick" },
	{ id = 12550, name = "golden fir cone" },
	{ id = 28791, name = "library ticket" },
	{ id = 19136, name = "nail case" },	
	
	{ id = 31576, name = "Regalia of Suon" },
	{ id = 30171, name = "purple tendril lantern" },
	{ id = 12305, name = "tin key" },
	{ id = 12801, name = "golden can of oil" },
	{ id = 16153, name = "iron loadstone" },
	{ id = 30170, name = "turquoise tendril lantern" },		
	
	{ id = 14143, name = "four-leaf clover" },
	{ id = 16154, name = "glow wine" },
	{ id = 14142, name = "foxtail" },
	{ id = 12306, name = "leather whip" },
	{ id = 16251, name = "golem wrench" },
	{ id = 27605, name = "candle stump" },			
	
	{ id = 21439, name = "Lion's Heart" },
	{ id = 12549, name = "bamboo leaves" },
	{ id = 12509, name = "scorpion sceptre" },
	{ id = 20274, name = "nightmare horn" },
	{ id = 12519, name = "slug drug" },
	{ id = 12311, name = "carrot on a stick" },			

	{ id = 12304, name = "maxilla maximus" },
	{ id = 12320, name = "sweet smelling bait" },
	{ id = 21186, name = "control unit" },
	{ id = 17858, name = "leech" },
	{ id = 12802, name = "sugar oat" },
	{ id = 34258, name = "red silk flower" },		
	
}

local mountBox = Action()

function mountBox.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

mountBox:id(9586)
mountBox:register()
