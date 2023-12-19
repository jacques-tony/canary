local talk = TalkAction("!bp")
local cooldownTime = 60 -- Tempo de cooldown em segundos

-- Adiciona um campo de tempo de cooldown ao jogador
function setCooldown(player)
    player:setStorageValue(talk.storage, os.time() + cooldownTime)
end

-- Verifica se o jogador está no cooldown
function isInCooldown(player)
    local lastUsage = player:getStorageValue(talk.storage)
    return lastUsage ~= -1 and os.time() < lastUsage
end

function talk.onSay(cid, words, param)
    local cost, p = 1000, Player(cid)

    -- Verifica se o jogador está no cooldown
    if isInCooldown(p) then
        p:sendCancelMessage("You must wait 60 seconds before purchasing another backpack.")
        return true
    end

    if (not p:isPzLocked()) then
        if (p:removeMoneyBank(cost)) then
            p:addItem(2854, 1)
            p:sendTextMessage(19, "You bought a backpack!")
            
            -- Define o cooldown para o jogador
            setCooldown(p)
        else
            p:sendCancelMessage("You do not have " .. cost .. " gold coins to buy a backpack.")
        end
    else
        p:sendCancelMessage("You cannot buy a backpack when you are in battle.")
    end

    return true
end

talk:separator(" ")
talk:groupType("normal")
talk:register()
