local tilePremium = MoveEvent()

function tilePremium.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end 

    -- Check premium status
    if not player:isPremium() then
        player:sendTextMessage(MESSAGE_INFO_DESCR,"Only Premium players can enter this area.")
        player:teleportTo({x = 17365, y = 18986, z = 13}) 
        return true
    end

    -- Add any additional checks or actions here if needed

    return true
end

tilePremium:aid(12001)
tilePremium:register()
