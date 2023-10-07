local resetQuestRemovePedra = Action()

function resetQuestRemovePedra.onUse(player, item, fromPosition, itemEx, toPosition)
    local stonePos = Position(17580, 17838, 11)
    local tile = Tile(stonePos)
    local stone = tile:getItemById(1841)
    if (stone) then
        stone:remove(1)
        toPosition:sendMagicEffect(CONST_ME_POFF)
        stonePos:sendMagicEffect(CONST_ME_MORTAREA)
        addEvent(function() Game.createItem(1841, 1, stonePos) stonePos:sendMagicEffect(CONST_ME_MORTAREA) end, 150000)
        player:say("**click**")
        return true
    else
        player:say("**click**")
    end
    return true
end

resetQuestRemovePedra:aid(1354)
resetQuestRemovePedra:register()