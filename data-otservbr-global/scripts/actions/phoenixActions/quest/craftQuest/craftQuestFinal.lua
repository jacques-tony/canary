local craftquest = Action()

local config = {
    [49980] = Position(18357, 18245, 15)
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

craftquest:aid(49980)
craftquest:register()