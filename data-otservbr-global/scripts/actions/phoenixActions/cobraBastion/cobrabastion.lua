local cobraBastion = Action()

local config = {
    [30255] = Position(18169, 17812, 7),
    [30256] = Position(18114, 17830, 6)
}

function cobraBastion.onUse(player, item, fromPosition, itemEx, toPosition)
    if player:getLevel() < 8 then
        player:sendCancelMessage('You do not feel experienced enough to traverse the dangerous surge of waves on this treacherous coast.')
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


cobraBastion:aid(30255, 30256)
cobraBastion:register()