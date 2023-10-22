local falcons = Action()

local config = {
    [30355] = Position(18199, 17711, 7), 
    [30356] = Position(18186, 17729, 7)
}

function falcons.onUse(player, item, fromPosition, itemEx, toPosition)
    if player:getLevel() < 8 then
--        player:sendCancelMessage('You do not feel experienced enough to traverse the dangerous surge of waves on this treacherous coast.')
        return true
    end 

    for actionId, destination in pairs(config) do 
        if item.actionid == actionId then
            player:teleportTo(destination)
            destination:sendMagicEffect(CONST_ME_POFF)
            fromPosition:sendMagicEffect(CONST_ME_POFF)
            return true
        end
    end
end

falcons:aid(30355, 30356)
falcons:register()