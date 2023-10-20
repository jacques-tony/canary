local islandReward = MoveEvent()
islandReward:type("stepin")

function islandReward.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then return true end
    local storagePromotion = STORAGEVALUE_PROMOTION -- Troque 12345 pelo valor de armazenamento apropriado para a promoção

    if player:getLevel(cid) >= 80 and player:getStorageValue(storagePromotion) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations, warrior!")
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be level 80 and have promotion.")
        creature:teleportTo(Position(17635, 17694, 7))
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
    return true 
end

islandReward:aid(16998)
islandReward:register()
