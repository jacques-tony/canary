local internalNpcName = "Phoenix Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 76,
	lookFeet = 94,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Trading tokens! First-class bargains!" },
	{ text = "Bespoke armor for all vocations! For the cost of some tokens only!" },
	{ text = "Tokens! Bring your tokens!" },
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

local function creatureSayCallback(npc, creature, type, message)
	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.currency = 22516

npcConfig.shop = {
	{ itemName = "earthheart cuirass", clientId = 22521, buy = 100 },
	{ itemName = "earthheart hauberk", clientId = 22522, buy = 100 },
	{ itemName = "earthheart platemail", clientId = 22523, buy = 100 },
	{ itemName = "earthmind raiment", clientId = 22535, buy = 100 },
	{ itemName = "earthsoul tabard", clientId = 22531, buy = 100 },
	{ itemName = "fireheart cuirass", clientId = 22518, buy = 100 },
	{ itemName = "fireheart hauberk", clientId = 22519, buy = 100 },
	{ itemName = "fireheart platemail", clientId = 22520, buy = 100 },
	{ itemName = "firemind raiment", clientId = 22534, buy = 100 },
	{ itemName = "firesoul tabard", clientId = 22530, buy = 100 },
	{ itemName = "frostheart cuirass", clientId = 22527, buy = 100 },
	{ itemName = "frostheart hauberk", clientId = 22528, buy = 100 },
	{ itemName = "frostheart platemail", clientId = 22529, buy = 100 },
	{ itemName = "frostmind raiment", clientId = 22537, buy = 100 },
	{ itemName = "frostsoul tabard", clientId = 22533, buy = 100 },
	{ itemName = "magic shield potion", clientId = 35563, buy = 1 },
	{ itemName = "thunderheart cuirass", clientId = 22524, buy = 100 },
	{ itemName = "thunderheart hauberk", clientId = 22525, buy = 100 },
	{ itemName = "thunderheart platemail", clientId = 22526, buy = 100 },
	{ itemName = "thundermind raiment", clientId = 22536, buy = 100 },
	{ itemName = "thundersoul tabard", clientId = 22532, buy = 100 },
}

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)

