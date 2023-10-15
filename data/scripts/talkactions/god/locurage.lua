function loco(pid, stop)
	local player = Player(pid)
	if not player then stopEvent(locurage) return true end
	local outfit = player:getOutfit()
	if stop then 
		return true 
	end
	outfit.lookHead = math.random(50, 250)
	outfit.lookBody = math.random(50, 250)
	outfit.lookLegs = math.random(50, 250)
	outfit.lookFeet = math.random(50, 250)
	outfit.lookMountHead = math.random(50, 250)
	outfit.lookMountBody = math.random(50, 250)
	outfit.lookMountLegs = math.random(50, 250)
	outfit.lookMountFeet = math.random(50, 250)
	player:setOutfit(outfit)
	locurage = addEvent(loco, 50, player:getId())
end

local talk = TalkAction("/lc")

function talk.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	if locurage then stopEvent(locurage) end
	if param == "stop" then
		loco(player, true)
	else
		loco(player, false)
	end

	return false
end

talk:separator(" ")
talk:groupType("god")
talk:register()

local lcall = TalkAction("/lcall")

function lcall.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	local players = Game.getPlayers()

	for k, char in pairs(players) do
		if char then
			loco(char:getId(), false)
		end
	end
	return false
end

lcall:separator(" ")
lcall:groupType("god")
lcall:register()

local bizo = TalkAction("/bizo")

function bizo.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
	local players = Game.getPlayers()

	for k, char in pairs(players) do
		if char then
			local outfit = char:getOutfit()
			outfit.lookType = 403
			char:setOutfit(outfit)
		end
	end
	return false
end

bizo:separator(" ")
bizo:groupType("god")
bizo:register()

