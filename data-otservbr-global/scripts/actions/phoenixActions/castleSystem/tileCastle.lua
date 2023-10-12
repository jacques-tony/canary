local tileCastle = MoveEvent()
tileCastle:type("stepin")

function tileCastle.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    
    if not player then
        return true
    end

    local guild = player:getGuild() 
    
    if player:getGuild() and player:getLevel() > 8 then
        if player:getStorageValue(552) < os.time() then
            broadcastMessage("A Guild ["..guild:getName().."], is invading Phoenix Castle.", MESSAGE_EVENT_ADVANCE)
            player:setStorageValue(552, os.time() + 60)
        end
    else
        player:teleportTo(player:getTown():getTemplePosition())
        position:sendMagicEffect(CONST_ME_TELEPORT)
        fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
        player:say('You dont have enough guild or level.', TALKTYPE_MONSTER_SAY)
    end
    return true
end

tileCastle:aid(13715)
tileCastle:register()