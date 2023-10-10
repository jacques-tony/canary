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
            toPos = {x = 17545, y = 17818, z = 10}, 
            portalTime = 1, --minutes
        }
    },
    ["orshabaal"] = {
        message = "You have defeated Orshabaal!",	
        config = {
            createPos = {x = 17551, y = 17822, z = 10}, --NOTE: You may use empty brackets to create the portal where the monster dies.
            toPos = {x = 17548, y = 17822, z = 11},
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

local killMonsterCreatePortal = CreatureEvent("killMonsterCreatePortal")

function killMonsterCreatePortal.onKill(creature, target)
    if not target:isMonster() or target:getMaster() then
        return true
    end
    
    local player = Player(creature:getGuid())
    local k = t[target:getName():lower()]
    if not k then
        return true
    end
    
    local pos, cPos = target:getPosition()
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

killMonsterCreatePortal:type("kill")
killMonsterCreatePortal:register()

---------------------------------------------------------------------------------------
-- Register script onLogin
---------------------------------------------------------------------------------------
local monsterKillLogin = CreatureEvent("monsterKillLogin")

function monsterKillLogin.onLogin(player)
    player:registerEvent("killMonsterCreatePortal")
    return true
end

monsterKillLogin:type("login")
monsterKillLogin:register()