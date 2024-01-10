local potionbonus = Action()

local itemid = 30006 -- ID do item

function potionbonus.onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, 1150) ~= -1 then
        doPlayerSendCancel(cid, "You already have the 50% healing bonus.")
        return true
    end

    doRemoveItem(item.uid) -- Remove o item após o uso
    setPlayerStorageValue(cid, 1150, 1)
    doSendMagicEffect(getPlayerPosition(cid), math.random(28, 30))
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have gained the 50% healing bonus.")

    return true
end

potionbonus:id(30006)
potionbonus:register()