local creatureEvent = CreatureEvent("DWBM_Experience__onDeath")
function creatureEvent.onDeath(player, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if player:getLastDWBMExperience() == 0 then
        return true
    end

    player:setAllDWBMExperience(-player:getLastDWBMExperience())
	player:setLastDWBMExperience(0)
	return true
end
creatureEvent:register()

local creatureEvent = CreatureEvent('DWBM_Experience__onLogin')
function creatureEvent.onLogin(player)
    player:registerEvent("DWBM_Experience__onDeath")
    return true
end
creatureEvent:register()

local globalevent = GlobalEvent('DWBMThink')
function globalevent.onThink(interval)
    initializeDWBM()
    for dwbm, entry in pairs(__configDWBM) do
        checkDWBM(dwbm, entry.time)
    end
    return true
end
globalevent:interval(10000)
globalevent:register()