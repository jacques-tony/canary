local internalNpcName = "Master of the Renaissance"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 635,
	lookHead = 0,
	lookBody = 94,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 3,
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
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, "reset") then
		npcHandler:say("Do you really want to reset your character? {yes}", npc, creature)
		npcHandler:setTopic(playerId, 1)
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 1 then
			if player:getStorageValue(67606) == -1 then
				npcHandler:say("You need to do a mission first to be able to reset.", npc, creature)
				return false
			end

			if player:getResets() >= resetConfig.limitResets then
				npcHandler:say("You have reached the maximum reset limit.", npc, creature)
				return true
			end
		
			if player:getStorageValue(resetConfig.storage_time) >= os.time() then
				npcHandler:say("Wait ".. string.diff(player:getStorageValue(resetConfig.storage_time) - os.time()) .. " to reset again.", npc, creature)
				return true 
			end

			if player:getLevel() < player:getResetLevel() then
				npcHandler:say("You need level " .. player:getResetLevel() .. " or more to reset.", npc, creature)
				return true
			end

			if not player:removeMoneyBank(player:getResetsPrice()) then
				npcHandler:say("You do not have enough money.", npc, creature)
				return false
			end

			player:restarting()
			npcHandler:setTopic(playerId, 0)
		else
			npcHandler:say("Did you mean {reset}?", npc, creature)
		end
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Hello, |PLAYERNAME|! You can reset your character at any time, to reset say {reset}.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)