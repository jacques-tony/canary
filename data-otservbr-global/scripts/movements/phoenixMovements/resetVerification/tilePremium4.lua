local tilePremium4 = MoveEvent()

function tilePremium4.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Check premium status
    if not player:isPremium() then
        player:sendTextMessage(MESSAGE_INFO_DESCR,"Only Premium players can enter this area.")
        player:teleportTo({x = 17664, y = 18636, z = 7}) 
        return true
    end

    -- Add any additional checks or actions here if needed

    return true
end

tilePremium4:aid(12014)
tilePremium4:register()

