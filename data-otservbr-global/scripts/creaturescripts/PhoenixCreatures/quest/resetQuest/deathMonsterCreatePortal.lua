---------------------------------------------------------------------------------------
-- This script creates a portal when monster dies
---------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------
-- Config start (always write creature name in lower case for ex: "demon" not "Demon")
---------------------------------------------------------------------------------------
local portalId, t = 775,
{
    ["black knight"] = {
        message = "The soul of black knight generated a portal!",
        config = {
            createPos = {x = 17551, y = 17824, z = 11},
            toPos = {x = 17548, y = 17820, z = 11},
            portalTime = 1, --minutes
        }
    },
}
---------------------------------------------------------------------------------------
-- Config end
---------------------------------------------------------------------------------------

local function spectatorStartCountdown(time, position)
    local spectators = Game.getSpectators(position, false, false, 5, 5, 5, 5)

    if #spectators > 0 then
        for i = 1, #spectators do
            if time > 1 then
                spectators[i]:say("" .. time .. "", TALKTYPE_MONSTER_SAY, false, spectators[i], position)
            else
                spectators[i]:say("Time out!", TALKTYPE_MONSTER_SAY, false, spectators[i], position)
                break
            end
        end
    end

    local portal = Tile(position):getItemById(portalId)
    if portal then
        addEvent(spectatorStartCountdown, 1000, time - 1, position)
    end
end

local function removePortal(position)
    local portal = Tile(position):getItemById(portalId)
    if portal then
        portal:remove()
    end
end

local deathMonsterCreatePortal = CreatureEvent("deathMonsterCreatePortal")

function deathMonsterCreatePortal.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)   
    if not creature:isMonster() or creature:getMaster() then
        return true
    end
    
    local k = t[creature:getName():lower()]
    if not k then
        return true
    end
    
    local pos, cPos = creature:getPosition()
    if type(k.config.createPos) == 'table' then
        if next(k.config.createPos) == nil then
            cPos = pos
        else
            cPos = k.config.createPos
        end
    end

    if Tile(cPos):getItemById(portalId) then
        return true
    end

    local item = Game.createItem(portalId, 1, cPos)
    if item:isTeleport() then
        item:setDestination(k.config.toPos)
    end
    
    local pt = k.config.portalTime


    addEvent(spectatorStartCountdown, 500, pt * 60, cPos)
    addEvent(removePortal, pt * 60 * 1000, cPos)
    return true
end

deathMonsterCreatePortal:register()