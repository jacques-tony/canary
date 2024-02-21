local spellBonus = Action()

local itemid = 7991 -- ID do item

function spellBonus.onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, 4455) ~= -1 then
        doPlayerSendCancel(cid, "You already have the 50% healing bonus.")
        return true
    end

    doRemoveItem(item.uid) -- Remove o item após o uso
    setPlayerStorageValue(cid, 4455, 1)
    doSendMagicEffect(getPlayerPosition(cid), math.random(28, 30))
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have gained the 50% healing bonus.")

    return true
end

spellBonus:id(7991)
spellBonus:register()
