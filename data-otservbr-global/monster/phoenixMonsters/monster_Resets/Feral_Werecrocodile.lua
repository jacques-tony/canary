local mType = Game.createMonsterType("Feral Werecrocodile")
local monster = {}

monster.description = "a Feral Werecrocodile"
monster.experience = 34041
monster.outfit = {
	lookType = 1647,
	lookHead = 116,
	lookBody = 95,
	lookLegs = 19,
	lookFeet = 21,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2388
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 2500,
	FirstUnlock = 25,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "Sanctuary."
	}

monster.health = 32413
monster.maxHealth = 32413
monster.race = "undead"
monster.corpse = 43767
monster.speed = 110
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {

}

monster.loot = {
	{ name = "gold coin", chance = 13222, maxCount = 100 },
	{ name = "platinum coin", chance = 7601, maxCount = 21 },
	{ name = "werecrocodile tongue", chance = 13336, maxCount = 1 },
	{ name = "ham", chance = 9592, maxCount = 2 },
	{ name = "war hammer", chance = 5086, maxCount = 1 },
	{ name = "moonlight crystal", chance = 11701, maxCount = 1 },
	{ name = "golden sun coin", chance = 7323, maxCount = 1 },
	{ name = "violet gem", chance = 12362, maxCount = 1 },
	{ name = "ornate crossbow", chance = 8599, maxCount = 1 },
	{ name = "sun brooch", chance = 5825, maxCount = 1 },
	{ name = "terra mantle", chance = 12902, maxCount = 1 },
	{ name = "swamplair armor", chance = 10792, maxCount = 1 },
}

monster.attacks = {
	{ name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1728, effect = CONST_ME_DRAWBLOOD },
	{ name ="combat", interval = 6000, chance = 30, type = COMBAT_HOLYDAMAGE, minDamage = -1382, maxDamage = -2073, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false },
	{ name ="combat", interval = 2750, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1382, maxDamage = -2073, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name ="combat", interval = 2500, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -1382, maxDamage = -2073, radius = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name ="combat", interval = 3300, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -1382, maxDamage = -2073, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false },
	{ name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1382, maxDamage = -2073, radius = 4, effect = CONST_ME_BIGCLOUDS, target = false }
}

monster.defenses = {
	defense = 85,
	armor = 85
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 25 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -5 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 35 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE , percent = -20 },
	{ type = COMBAT_DEATHDAMAGE , percent = 60 }
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false }
}

mType:register(monster)
