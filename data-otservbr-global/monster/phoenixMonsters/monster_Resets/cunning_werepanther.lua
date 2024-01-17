local mType = Game.createMonsterType("Cunning Werepanther")
local monster = {}

monster.description = "a Cunning Werepanther"
monster.experience = 49019
monster.outfit = {
	lookType = 1648,
	lookHead = 18,
	lookBody = 124,
	lookLegs = 74,
	lookFeet = 81,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 35735
monster.maxHealth = 35735
monster.race = "undead"
monster.corpse = 43959
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.raceId = 2403
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 2500,
	FirstUnlock = 25,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Sanctuary."
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
	runHealth = 0,
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
	{ name = "gold coin", chance = 10558, maxCount = 80 },
	{ name = "platinum coin", chance = 8694, maxCount = 11 },
	{ name = "werepanther claw", chance = 5485, maxCount = 1 },
	{ name = "golden sickle", chance = 5970, maxCount = 1 },
	{ name = "small topaz", chance = 7513, maxCount = 4 },
	{ name = "meat", chance = 12545, maxCount = 2 },
	{ name = "yellow gem", chance = 14190, maxCount = 1 },
	{ name = "moonlight crystal", chance = 13613, maxCount = 1 },
	{ name = "lightning headband", chance = 11638, maxCount = 1 },
	{ name = "lightning pendant", chance = 5298, maxCount = 1 },
	{ name = "ripper lance", chance = 6667, maxCount = 1 },
	{ name = "fur armor", chance = 8253, maxCount = 1 },
	{ name = "gemmed figurine", chance = 13628, maxCount = 1 },
	{ name = "werepanther trophy", chance = 5424, maxCount = 1 },
}

monster.attacks = {
	{ name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2488 },
	{ name ="combat", interval = 2000, chance = 18, type = COMBAT_EARTHDAMAGE, minDamage = -1990, maxDamage = -2985, radius = 2, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -1990, maxDamage = -2985, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false }
}

monster.defenses = {
	defense = 100,
	armor = 72
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 5 },
	{ type = COMBAT_FIREDAMAGE, percent = 40 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE , percent = 25 },
	{ type = COMBAT_DEATHDAMAGE , percent = -20 }
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false }
}

mType:register(monster)
