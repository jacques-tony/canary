local RemovePedra = Action()

function RemovePedra.onUse(player, item, fromPosition, itemEx, toPosition)
    local stonePos = Position(18079, 17958, 10)
    local tile = Tile(stonePos)
    local stone = tile:getItemById(11890)
    if (stone) then
        stone:remove(1)
        toPosition:sendMagicEffect(CONST_ME_POFF)
        stonePos:sendMagicEffect(CONST_ME_MORTAREA)
        addEvent(function() Game.createItem(11890, 1, stonePos) stonePos:sendMagicEffect(CONST_ME_MORTAREA) end, 150000)
        player:say("**click**")
        return true
    else
        player:say("**click**")
    end
    return true
end

RemovePedra:aid(13540)
RemovePedra:register()