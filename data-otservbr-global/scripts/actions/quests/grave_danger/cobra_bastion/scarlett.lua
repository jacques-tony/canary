local armorId = 31482
local armorPos = Position(18181, 17824, 6)
local metalWallId = 31449

local function createArmor(id, amount, pos)
	local armor = Game.createItem(id, amount, pos)
	if armor then
		armor:setActionId(40003)
	end
end

local config = {
	boss = {
		name = "Scarlett Etzel",
		createFunction = function()
			local scarlett = Game.createMonster("Scarlett Etzel", Position(18179, 17827, 6), true, true)
			scarlett:setStorageValue(Storage.GraveDanger.CobraBastion.Questline, 1)
			return scarlett
		end,
	},
	playerPositions = {
		{ pos = Position(18178, 17845, 6), teleport = Position(18179, 17835, 6) },
		{ pos = Position(18177, 17846, 6), teleport = Position(18179, 17835, 6) },
		{ pos = Position(18179, 17846, 6), teleport = Position(18179, 17835, 6) },
		{ pos = Position(18178, 17846, 6), teleport = Position(18179, 17835, 6) },
		{ pos = Position(18178, 17847, 6), teleport = Position(18179, 17835, 6) },
	},
	specPos = {
		from = Position(18168, 17822, 6),
		to = Position(18189, 17844, 6),
	},
	onUseExtra = function()
		SCARLETT_MAY_TRANSFORM = 0
	end,
	exit = Position(18178, 17849, 6),
}

local lever = BossLever(config)
lever:position(Position(18178, 17844, 6))
lever:register()

local transformTo = {
	[31474] = 31475,
	[31475] = 31476,
	[31476] = 31477,
	[31477] = 31474,
}

local mirror = {
	fromPos = Position(18172, 17825, 6),
	toPos = Position(18186, 17839, 6),
	mirrors = { 31474, 31475, 31476, 31477 },
}

local function backMirror()
	for x = mirror.fromPos.x, mirror.toPos.x do
		for y = mirror.fromPos.y, mirror.toPos.y do
			local sqm = Tile(Position(x, y, 6))
			if sqm then
				for _, id in pairs(mirror.mirrors) do
					local item = sqm:getItemById(id)
					if item then
						item:transform(mirror.mirrors[math.random(#mirror.mirrors)])
						item:getPosition():sendMagicEffect(CONST_ME_POFF)
					end
				end
			end
		end
	end
end

local graveScarlettAid = Action()
function graveScarlettAid.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if table.contains(transformTo, item.itemid) then
		local pilar = transformTo[item.itemid]
		if pilar then
			item:transform(pilar)
			item:getPosition():sendMagicEffect(CONST_ME_POFF)
		end
	elseif item.itemid == armorId then
		item:getPosition():sendMagicEffect(CONST_ME_THUNDER)
		item:remove(1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You hold the old chestplate of Galthein in front of you. It does not fit and far too old to withstand any attack.")
		addEvent(createArmor, 20 * 1000, armorId, 1, armorPos)
		addEvent(backMirror, 10 * 1000)
		SCARLETT_MAY_TRANSFORM = 1
		addEvent(function()
			SCARLETT_MAY_TRANSFORM = 0
		end, 2000)
	elseif item.itemid == metalWallId then
		if player:getPosition().y == 17580 then
			player:teleportTo(Position(18178, 17852, 6))
		else
			player:teleportTo(Position(18178, 17850, 6))
		end
	end
	return true
end

graveScarlettAid:aid(40003)
graveScarlettAid:register()
