local tilePremium3 = MoveEvent()

function tilePremium3.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Check premium status
    if not player:isPremium() then
        player:sendTextMessage(MESSAGE_INFO_DESCR,"Only Premium players can enter this area.")
        player:teleportTo({x = 17623, y = 18881, z = 5}) 
        return true
    end

    -- Add any additional checks or actions here if needed

    return true
end

tilePremium3:aid(12008)
tilePremium3:register()
