local mType = Game.createMonsterType("Monsters")
local monster = {}

monster.description = "Monsters"
monster.experience = 30000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 110000
monster.maxHealth = 110000
monster.race = "fire"
monster.corpse = 4097
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 3000,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}


monster.loot = {
	{ id = 3025, chance = 3500 }, -- ancient amulet
	{ id = 3116, chance = 9000 }, -- big bone
	{ id = 3027, chance = 15000, maxCount = 15 }, -- black pearl
	{ id = 3041, chance = 1500 }, -- blue gem
	{ id = 3079, chance = 4000 }, -- boots of haste
	{ id = 3070, chance = 3500 }, -- moonlight rod
	{ id = 3076, chance = 2500 }, -- crystal ball
	{ id = 3008, chance = 1500 }, -- crystal necklace
	{ id = 3007, chance = 5500 }, -- crystal ring
	{ id = 3420, chance = 15500 }, -- demon shield
	{ id = 3356, chance = 11000 }, -- devil helmet
	{ id = 3275, chance = 20000 }, -- double axe
	{ id = 3322, chance = 4500 }, -- dragon hammer
	{ id = 3051, chance = 13500 }, -- energy ring
	{ id = 3320, chance = 17000 }, -- fire axe
	{ id = 3281, chance = 12500 }, -- giant sword
	{ id = 3031, chance = 99900, maxCount = 100 }, -- gold coin
	{ id = 3031, chance = 88800, maxCount = 100 }, -- gold coin
	{ id = 3031, chance = 77700, maxCount = 100 }, -- gold coin
	{ id = 3031, chance = 66600, maxCount = 100 }, -- gold coin
	{ id = 3063, chance = 8000 }, -- gold ring
	{ id = 3364, chance = 5000 }, -- golden legs
	{ id = 2903, chance = 7500 }, -- golden mug
	{ id = 3306, chance = 4500 }, -- golden sickle
	{ id = 3066, chance = 3500 }, -- snakebite rod
	{ id = 3038, chance = 1500 }, -- green gem
	{ id = 3072, chance = 2500 }, -- wand of decay
	{ id = 3284, chance = 7500 }, -- ice rapier
	{ id = 3061, chance = 1000 }, -- life crystal
	{ id = 3046, chance = 11500 }, -- magic light wand
	{ id = 3366, chance = 3000 }, -- magic plate armor
	{ id = 3414, chance = 7500 }, -- mastermind shield
	{ id = 3048, chance = 5000 }, -- might ring
	{ id = 3062, chance = 4000 }, -- mind stone
	{ id = 3060, chance = 12000 }, -- orb
	{ id = 3055, chance = 4500 }, -- platinum amulet
	{ id = 3084, chance = 4500 }, -- protection amulet
	{ id = 2848, chance = 2600 }, -- purple tome
	{ id = 3098, chance = 13000 }, -- ring of healing
	{ id = 3006, chance = 3500 }, -- ring of the sky
	{ id = 3054, chance = 13000 }, -- silver amulet
	{ id = 3290, chance = 15500 }, -- silver dagger
	{ id = 3324, chance = 5000 }, -- skull staff
	{ id = 3033, chance = 13500, maxCount = 20 }, -- small amethyst
	{ id = 3028, chance = 9500, maxCount = 5 }, -- small diamond
	{ id = 3032, chance = 15500, maxCount = 10 }, -- small emerald
	{ id = 3029, chance = 13500, maxCount = 10 }, -- small sapphire
	{ id = 3049, chance = 9500 }, -- stealth ring
	{ id = 3081, chance = 4000 }, -- stone skin amulet
	{ id = 3058, chance = 2500 }, -- strange symbol
	{ id = 3034, chance = 14000, maxCount = 7 }, -- talon
	{ id = 2993, chance = 14500 }, -- teddy bear
	{ id = 3309, chance = 13500 }, -- thunder hammer
	{ id = 3265, chance = 20000 }, -- two handed sword
	{ id = 3002, chance = 100 }, -- voodoo doll
	{ id = 3069, chance = 3500 }, -- necrotic rod
	{ id = 3026, chance = 12500, maxCount = 15 }, -- white pearl
}


monster.defenses = {
	defense = 160,
	armor = 160,
	--	mitigation = ???,
	{ name = "outfit", interval = 1000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000, outfitMonster = "Bug" },
	{ name = "outfit", interval = 1000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000, outfitMonster = "Werelion" },
	{ name = "outfit", interval = 1000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000, outfitMonster = "Wyrm" },
	{ name = "outfit", interval = 1000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000, outfitMonster = "Frazzlemaw" },
	{ name = "outfit", interval = 1000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000, outfitMonster = "Cloak Of Terror" },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType.onThink = function(monster, interval) end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature) end

mType.onMove = function(monster, creature, fromPosition, toPosition) end

mType.onSay = function(monster, creature, type, message) end

mType:register(monster)
