local townMovement = MoveEvent()
townMovement:type("stepin")

function townMovement.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    local town = Town(1)
    player:setTown(town)
    player:teleportTo(town:getTemplePosition())
    town:getTemplePosition():sendMagicEffect(CONST_ME_TELEPORT)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Now you are a city dweller ".. town:getName() .. ".")
    return true
end

townMovement:aid(2033)
townMovement:register()