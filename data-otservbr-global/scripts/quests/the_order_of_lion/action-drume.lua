local config = {
    lionPosition = {
        Position(17313, 17596, 7),
        Position(17318, 17600, 7),
        Position(17313, 17604, 7),
    },
    usurperPosition = {
        Position(17319, 17604, 7),
        Position(17313, 17600, 7),
        Position(17317, 17596, 7),
    },
    firstPlayerPosition = Position(17326, 17592, 6),
    centerPosition = Position(17308, 17607, 7), -- Center Room
    exitPosition = Position(17328, 17592, 6), -- Exit Position
    newPosition = Position(17322, 17594, 7),
    rangeX = 22,
    rangeY = 16,
    timeToKill = 20, -- time in minutes to remove the player
}

local currentEvent = nil

local function clearRoomDrume(centerPosition, rangeX, rangeY, resetGlobalStorage)
	local spectators, spectator = Game.getSpectators(centerPosition, false, false, rangeX, rangeX, rangeY, rangeY)
	for i = 1, #spectators do
		spectator = spectators[i]
		if spectator:isMonster() then
			spectator:remove()
		end
		if spectator:isPlayer() then
			spectator:teleportTo(config.exitPosition)
			spectator:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your time is over.")
		end
	end
	if Game.getStorageValue(resetGlobalStorage) == 1 then
		Game.setStorageValue(resetGlobalStorage, -1)
	end
	currentEvent = nil
end

local drumeAction = Action()
function drumeAction.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getPosition() ~= config.firstPlayerPosition then
		return false
	end

	local spectators = Game.getSpectators(config.centerPosition, false, true, config.rangeX, config.rangeX, config.rangeY, config.rangeY)
	if #spectators ~= 0 then
		player:sendCancelMessage("There's someone already in the skirmish.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	local tempPos, tempTile, tempCreature
	local players = {}
	for x = config.firstPlayerPosition.x, config.firstPlayerPosition.x + 4 do
		tempPos = Position(x, config.firstPlayerPosition.y, config.firstPlayerPosition.z)
		tempTile = Tile(tempPos)
		if tempTile then
			tempCreature = tempTile:getTopCreature()
			if tempCreature and tempCreature:isPlayer() then
				table.insert(players, tempCreature)
			end
		end
	end
	if #players == 0 then
		return false
	end
	for _, pi in pairs(players) do
		if not pi:canFightBoss("Drume") then
			player:sendCancelMessage("Someone of your team has already fought in the skirmish in the last 10h.")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return true
		end
	end
	local spectators = Game.getSpectators(config.centerPosition, false, false, config.rangeX, config.rangeX, config.rangeY, config.rangeY)
	for _, creature in pairs(spectators) do
		if creature:isMonster() then
			creature:remove()
		end
	end
	local totalLion = 0
	local totalUsurper = 0
	local tempMonster
	for _, pos in pairs(config.lionPosition) do
		tempMonster = Game.createMonster("Lion Commander", pos)
		if not tempMonster then
			player:sendCancelMessage("There was an error, contact an admin.")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return true
		end
		totalLion = totalLion + 1
	end
	for _, pos in pairs(config.usurperPosition) do
		tempMonster = Game.createMonster("Usurper Commander", pos)
		if not tempMonster then
			player:sendCancelMessage("There was an error, contact an admin.")
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			return true
		end
		totalUsurper = totalUsurper + 1
	end
	for _, pi in pairs(players) do
		pi:setBossCooldown("Drume", os.time() + (configManager.getNumber(configKeys.BOSS_DEFAULT_TIME_TO_FIGHT_AGAIN)))
		pi:teleportTo(config.newPosition)
		pi:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have " .. config.timeToKill .. " minutes to defeat Drume.")
	end
	if currentEvent then
		stopEvent(currentEvent)
	end
	currentEvent = addEvent(clearRoomDrume, config.timeToKill * 60 * 1000, config.centerPosition, config.rangeX, config.rangeY, resetGlobalStorage)
	config.newPosition:sendMagicEffect(CONST_ME_TELEPORT)
	toPosition:sendMagicEffect(CONST_ME_POFF)
	Game.setStorageValue(GlobalStorage.TheOrderOfTheLion.Drume.TotalLionCommanders, totalLion)
	Game.setStorageValue(GlobalStorage.TheOrderOfTheLion.Drume.TotalUsurperCommanders, totalUsurper)
	return true
end

drumeAction:aid(59601)
drumeAction:register()
