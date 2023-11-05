local resetTime = Action()

local itemid = 19398 -- ID do item
local cooldownTime = 60 -- Tempo em segundos (1 minuto)

function resetTime.onUse(cid, item, frompos, item2, topos)
    local lastUseTime = getPlayerStorageValue(cid, 498) -- Recupera o último tempo de uso do item

    if lastUseTime == -1 or os.time() - lastUseTime >= cooldownTime then
        -- Se o item não foi usado ou o cooldown expirou, permita o uso
        doRemoveItem(item.uid) -- Remove o item após o uso
        setPlayerStorageValue(cid, 498, os.time()) -- Armazena o novo tempo de uso
        setPlayerStorageValue(cid, 499, -1)
        doSendMagicEffect(getPlayerPosition(cid), math.random(28, 30))
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You can now reset your character.")
    else
        -- Se o cooldown ainda estiver ativo, informe ao jogador
        local remainingCooldown = cooldownTime - (os.time() - lastUseTime)
        doPlayerSendCancel(cid, "You need to wait " .. remainingCooldown .. " seconds before using this item again.")
    end

    if getPlayerStorageValue(cid, 499) == 0 then
        -- Se o valor do armazenamento for zero, informe ao jogador que não pode usar o item
        doPlayerSendCancel(cid, "You don't have time to wait to clean.")
    end

    return true
end

resetTime:id(19398) 
resetTime:register()
