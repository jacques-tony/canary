local bossEntrance = MoveEvent()
local timeToFightAgain = 10 -- hours

function bossEntrance.onStepIn(creature, item, position, fromPosition, toPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local WarzoneIV = Position(18063, 17822, 14)
	local WarzoneIV_b = Position(18039, 17837, 14)

	local WarzoneV = Position(17982, 18232, 14)  
	local WarzoneV_b = Position(18008, 18236, 14)

	local WarzoneVI = Position(17417, 17710, 11) 
	local WarzoneVI_b = Position(17487, 17715, 11)

	local bossName = "The Count of the Core"
	local destination = WarzoneV_b

	if item:getPosition() == WarzoneIV then -- Warzone IV
		bossName = "The Baron from Below"
		destination = WarzoneIV_b
	end

	if item:getPosition() == WarzoneV then -- Warzone V
		bossName = "The Count of the Core"
		destination = WarzoneV_b
	end

	if item:getPosition() == WarzoneVI then -- Warzone VI
		bossName = "The Duke of the Depths"
		destination = WarzoneVI_b
	end
	local timeLeft = player:getBossCooldown(bossName) - os.time()
	if timeLeft > 0 then
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have to wait " .. getTimeInWords(timeLeft) .. " to face " .. bossName .. " again!")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	player:teleportTo(destination)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:setBossCooldown(bossName, os.time() + timeToFightAgain * 3600)
	return true
end

bossEntrance:type("stepin")
bossEntrance:aid(57243)
bossEntrance:register()
