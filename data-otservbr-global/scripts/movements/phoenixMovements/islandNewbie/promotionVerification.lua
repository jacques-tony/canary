local PromotionVerification = MoveEvent()

function PromotionVerification.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end
    
    local vocation = player:getVocation():getId()
    local level = player:getLevel()

    -- Ajustar o level para verificação
    local requiredLevel = 80

    if not isInArray({5, 6, 7, 8}, vocation) or level < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level " .. requiredLevel .. " and have promotion.")
        player:teleportTo({x = 17635, y = 17694, z = 7})        
        return true
    end

    return true
end

PromotionVerification:aid(16998)
PromotionVerification:register()