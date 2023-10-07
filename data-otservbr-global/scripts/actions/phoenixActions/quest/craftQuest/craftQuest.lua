local craftquest = Action()

local config = {
    [49978] = Position(18058, 17937, 4)
} 

function craftquest.onUse(player, item, fromPosition, itemEx, toPosition)
    for actionId, destination in pairs(config) do
        if item.actionid == actionId then
            player:teleportTo(destination)
            destination:sendMagicEffect(CONST_ME_POFF)
            fromPosition:sendMagicEffect(CONST_ME_POFF)
            return true
        end
    end
end

craftquest:aid(49978)
craftquest:register()