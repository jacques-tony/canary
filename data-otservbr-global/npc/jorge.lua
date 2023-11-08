local internalNpcName = "Jorge"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 159,
	lookHead = 38,
	lookBody = 77,
	lookLegs = 78,
	lookFeet = 94,
}

npcConfig.flags = {
	floorchange = false,
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

npcConfig.currency = 19083 
 
npcConfig.shop = {
	{ itemName = "Abacus", clientId = 19151, buy = 20 },
	{ itemName = "Assassin Doll", clientId = 28897, buy = 20 },
	{ itemName = "Bag of Oriental Spices", clientId = 10817, buy = 20 },
	{ itemName = "Bookworm Doll", clientId = 18343, buy = 20 },
	{ itemName = "Cateroides Doll", clientId = 22151, buy = 25 },
	{ itemName = "Doll of Durin the Almighty", clientId = 14764, buy = 20 },
	{ itemName = "Dragon Eye", clientId = 22027, buy = 20 },
	{ itemName = "Dragon Goblet", clientId = 31265, buy = 20 },
	{ itemName = "Draken Doll", clientId = 12043, buy = 20 },
	{ itemName = "Encyclopedia", clientId = 8149, buy = 20 }, 
	{ itemName = "Friendship Amulet", clientId = 19153, buy = 20 },
	{ itemName = "Frozen Heart", clientId = 19156, buy = 20 },
	{ itemName = "Golden Falcon", clientId = 28896, buy = 20 },
	{ itemName = "Golden Newspaper", clientId = 8153, buy = 20 },
	{ itemName = "Hand Puppets", clientId = 9189, buy = 20 },
	{ itemName = "Imortus", clientId = 12811, buy = 20 },
	{ itemName = "Jade Amulet", clientId = 31268, buy = 20 },
	{ itemName = "Key of Numerous Locks", clientId = 19152, buy = 20 },
	{ itemName = "Loremaster Doll", clientId = 31267, buy = 20 },
	{ itemName = "Mathmaster Shield", clientId = 14760, buy = 20 },
	{ itemName = "Medusa Skull", clientId = 14762, buy = 20 },
	{ itemName = "Music Box", clientId = 12045, buy = 20 },
	{ itemName = "Noble Sword", clientId = 16276, buy = 20 },
	{ itemName = "Norsemal Doll", clientId = 19150, buy = 20 },
	{ itemName = "Old Radio", clientId = 12813, buy = 20 },
	{ itemName = "Orcs Jaw Shredder", clientId = 19155, buy = 20 },
	{ itemName = "Pigeon Trophy", clientId = 31266, buy = 20 },	
	{ itemName = "Phoenix Statue", clientId = 22026, buy = 20 },	
	{ itemName = "The Mexcalibur", clientId = 19154, buy = 20 },	
	{ itemName = "TibiaHispano Emblem", clientId = 25980, buy = 20 },	
	{ itemName = "Goromaphone", clientId = 34210, buy = 20 },	
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

