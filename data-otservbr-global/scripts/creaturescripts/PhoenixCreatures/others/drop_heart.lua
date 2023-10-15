local creatureevent = CreatureEvent("__onDeath_dropHeart")
function creatureevent.onDeath(player, corpse, killer, mostDamageKiller, lastHitUnjustified, mostDamageUnjustified)
    if killer then
        if not killer:isPlayer() then
            return true
        end

        local heart = corpse:addItem(5943, 1)
        heart:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, killer:getName() ..' matou '.. player:getName())
    end
    return true
end
creatureevent:register()

local creatureevent = CreatureEvent('__onLogin_dropHeart')
function creatureevent.onLogin(player)
    player:registerEvent("__onDeath_dropHeart")
    return true
end
creatureevent:register()


