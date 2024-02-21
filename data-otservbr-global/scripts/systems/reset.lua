local hazard = Hazard.new({
	name = "hazard.gnomprona-gardens",
	from = Position(17373, 18363, 0),
	to = Position(17720, 19030, 14),
	maxLevel = 12,
	crit = true,
	dodge = true,
	damageBoost = true,
})

hazard:register()

-- Magma Bubble's fight is not affected by the hazard system
local hazardZone = Zone.getByName("hazard.gnomprona-gardens")
if not hazardZone then
	return
end
hazardZone:subtractArea({ x = 17016, y = 17735, z = 8 }, { x = 17031, y = 17748, z = 8 })
hazardZone:subtractArea({ x = 17012, y = 17707, z = 8 }, { x = 17053, y = 17740, z = 8 })

-- Remove the Fungosaurus-related code
-- ...

local deathEvent = CreatureEvent("PrimalHazardDeath")
function deathEvent.onDeath(creature)
	if not configManager.getBoolean(configKeys.TOGGLE_HAZARDSYSTEM) then
		return true
	end

	local monster = creature:getMonster()
	if not creature or not monster or not monster:hazard() or not hazard:isInZone(monster:getPosition()) then
		return true
	end
	-- don't spawn pods or plunder if the monster is a reward boss
	if monster:getType():isRewardBoss() then
		return true
	end

	-- Remove the Fungosaurus-related code
	-- ...

	return true
end

deathEvent:register()
