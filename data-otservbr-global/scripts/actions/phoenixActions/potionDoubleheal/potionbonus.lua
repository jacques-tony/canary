local potionbonus = Action()

local itemid = 30006 -- Storage Item

function potionbonus.onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, 1150) ~= -1 then
        doPlayerSendCancel(cid, "You already have the 50% healing bonus.")
        return true
    end

    doPlayerRemoveItem(cid, itemid, 1)
    setPlayerStorageValue(cid, 1150, 1)
    doSendMagicEffect(getPlayerPosition(cid), math.random(28, 30))
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have gained the 50% healing bonus.")
    return true
end

potionbonus:id(30006)
potionbonus:register()