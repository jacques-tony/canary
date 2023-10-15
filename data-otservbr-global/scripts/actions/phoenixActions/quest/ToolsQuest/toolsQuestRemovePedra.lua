local toolsQuestRemovePedra = Action()

function toolsQuestRemovePedra.onUse(player, item, fromPosition, itemEx, toPosition)
    local stonePos = Position(18118, 17703, 12)
    local tile = Tile(stonePos)
    local stone = tile:getItemById(8617)
    if (stone) then
        stone:remove(1)
        toPosition:sendMagicEffect(CONST_ME_POFF)
        stonePos:sendMagicEffect(CONST_ME_MORTAREA)
        addEvent(function() Game.createItem(8617, 1, stonePos) stonePos:sendMagicEffect(CONST_ME_MORTAREA) end, 150000)
        player:say("**click**")
        return true
    else
        player:say("**click**")
    end
    return true
end

toolsQuestRemovePedra:aid(23540)
toolsQuestRemovePedra:register()