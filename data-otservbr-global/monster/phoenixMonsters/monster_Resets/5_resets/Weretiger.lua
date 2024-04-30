local mType = Game.createMonsterType("Weretiger")
local monster = {}

monster.description = "a Weretiger"
monster.experience = 152008
monster.outfit = {
	lookType = 1646,
	lookHead = 120,
	lookBody = 108,
	lookLegs = 121,
	lookFeet = 120,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 26802
monster.maxHealth = 26802
monster.race = "undead"
monster.corpse = 43669
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = { 
	interval = 4000,
	chance = 10
}

monster.raceId = 2386
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 2500,
	FirstUnlock = 25,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 5,
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
	{ name = "gold coin", chance = 5019, maxCount = 100 },
	{ name = "platinum coin", chance = 11510, maxCount = 13 },
	{ name = "weretiger tooth", chance = 9948, maxCount = 1 },
	{ name = "meat", chance = 13813, maxCount = 4 },
	{ name = "furry club", chance = 8523, maxCount = 1 },
	{ name = "violet crystal shard", chance = 6028, maxCount = 1 },
	{ name = "knight armor", chance = 5692, maxCount = 1 },
	{ name = "moonlight crystals", chance = 11494, maxCount = 1 },
	{ name = "angelic axe", chance = 6617, maxCount = 1 },
	{ name = "blue gem", chance = 5379, maxCount = 1 },
	{ name = "weretiger trophy", chance = 7645, maxCount = 1 },
	{ name = "silver moon coin", chance = 10566, maxCount = 1 },
}


monster.attacks = {
	{ name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1340 },
	{ name ="combat", interval = 2000, chance = 18, type = COMBAT_EARTHDAMAGE, minDamage = -871, maxDamage = -1421, radius = 2, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -804, maxDamage = -1474, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false }
}

monster.defenses = {
	defense = 54,
	armor = 110,
	mitigation = 2.89,
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
