local mType = Game.createMonsterType("Phoenix Castle")
local monster = {}


monster.description = "a Phoenix Castle"
monster.experience = 5000
monster.outfit = {
	lookTypeEx = 7807,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 500000
monster.maxHealth = 500000
monster.runHealth = 15
monster.race = "undead"
monster.corpse = 5960
monster.speed = 0
monster.summonCost = 290

monster.changeTarget = {
	interval = 10000,
	chance = 20
}

monster.flags = {
	attackable = true, -- 1= true 0= false
	hostile = true,
	summonable = true,
	convinceable = false,
	illusionable = false,
	boss = false,
	ignoreSpawnBlock = false,
	pushable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 30,
	{text = "HAHAHAHAHAHAHAHAHAHA!", yell = true},
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "drunk", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="combat", interval = 600, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -6000, maxDamage = -6000, range = 7, radius = 14, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -3500, maxDamage = -5000, range = 7, radius = 14, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 1300, maxDamage = 2800, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.loot = {
	{name = "purple tome", chance = 1180},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "small emerald", chance = 9690, maxCount = 5},
	{name = "small amethyst", chance = 7250, maxCount = 5},
	{name = "small ruby", chance = 7430, maxCount = 5},
	{name = "small topaz", chance = 7470, maxCount = 5},
	{id= 3039, chance = 2220}, -- red gem
	{name = "demonic essence", chance = 14630},
	{name = "talon", chance = 3430},
	{name = "platinum coin", chance = 90540, maxCount = 8},
	{name = "might ring", chance = 1890},
	{id = 3049, chance = 2170}, -- stealth ring
	{name = "platinum amulet", chance = 680},
	{name = "orb", chance = 2854},
	{name = "gold ring", chance = 1050},
	{id = 3098, chance = 1990}, -- ring of healing
	{name = "giant sword", chance = 1980},
	{name = "ice rapier", chance = 1550},
	{name = "golden sickle", chance = 1440},
	{name = "fire axe", chance = 4030},
	{name = "devil helmet", chance = 1180},
	{name = "golden legs", chance = 440},
	{name = "magic plate armor", chance = 130},
	{name = "mastermind shield", chance = 480},
	{name = "demon shield", chance = 740},
	{name = "fire mushroom", chance = 19660, maxCount = 6},
	{name = "demon horn", chance = 14920},
	{name = "assassin star", chance = 12550, maxCount = 10},
	{name = "demonrage sword", chance = 70},
	{id = 7393, chance = 90}, -- demon trophy
	{name = "great mana potion", chance = 22220, maxCount = 3},
	{name = "ultimate health potion", chance = 19540, maxCount = 3},
	{name = "great spirit potion", chance = 18510, maxCount = 3}	
}

mType:register(monster)
