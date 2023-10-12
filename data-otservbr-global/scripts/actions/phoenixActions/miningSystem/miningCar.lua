local miningCar = Action()

local config = {
    [5341] = Position(17410, 17603, 11),
    [5342] = Position(17596, 17556, 6)
}

function miningCar.onUse(player, item, fromPosition, itemEx, toPosition)
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


miningCar:aid(5341, 5342)
miningCar:register()