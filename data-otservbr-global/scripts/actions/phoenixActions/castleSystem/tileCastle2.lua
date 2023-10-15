local tileCastle2 = MoveEvent()
tileCastle2:type("stepin")

function tileCastle2.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    
    local guild = player:getGuild()
    if not guild then
        local town = player:getTown():getTemplePosition()
--        player:teleportTo(town)
        player:teleportTo(Position(17586, 17563, 6))	
        town:sendMagicEffect(CONST_ME_TELEPORT)
        player:say('You dont have a guild.', TALKTYPE_MONSTER_SAY)
        return true
    end
    
    if (player:getGroup():getId() >= 4) then 
        return true
    end

    if player:getLevel() < 500 then  
        local town = player:getTown():getTemplePosition()
--      player:teleportTo(town)
        player:teleportTo(Position(17586, 17564, 6))	
        town:sendMagicEffect(MESSAGE_INFO_DESCR)
        player:say('You dont have enough level.', TALKTYPE_MONSTER_SAY)
        return true
    end
    return true
end

tileCastle2:aid(13716)
tileCastle2:register()