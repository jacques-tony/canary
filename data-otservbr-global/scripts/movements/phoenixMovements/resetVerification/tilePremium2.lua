local tilePremium2 = MoveEvent()

function tilePremium2.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Check premium status
    if not player:isPremium() then
        player:sendTextMessage(MESSAGE_INFO_DESCR,"Only Premium players can enter this area.")
        player:teleportTo({x = 17591, y = 19059, z = 11}) 
        return true
    end

    -- Add any additional checks or actions here if needed

    return true
end

tilePremium2:aid(12005)
tilePremium2:register()
