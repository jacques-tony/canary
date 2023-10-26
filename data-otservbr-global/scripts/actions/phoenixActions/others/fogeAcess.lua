local fogeAcess = Action()

local itemid = 35909 -- ID do item

function fogeAcess.onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, 12222) ~= -1 then
        doPlayerSendCancel(cid, "You already have access to the !openforge command.")
        return true
    end

    doRemoveItem(item.uid) -- Remove o item após o uso 
    setPlayerStorageValue(cid, 12222, 1)
    doSendMagicEffect(getPlayerPosition(cid), math.random(28, 30))
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "you have gained access to the !openforge command, you can now open the forge from anywhere..")

    return true
end

fogeAcess:id(35909)
fogeAcess:register()
