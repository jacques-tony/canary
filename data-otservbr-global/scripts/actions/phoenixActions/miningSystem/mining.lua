local mining = Action()

function Player.randItens(self)
    local rand = configMining.itens[math.random(#configMining.itens)]
    if rand.level and self:getStorageValue(configMining.level.storageNivel) < rand.nivelMin then
        return self:randItens()
    end
    return rand
end

function mining.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    -- Verifica se o player tem pelo menos 1 reset
    if player:getResets() < 1 then 
        player:sendCancelMessage("You need to have 1 reset to mine.")
        return true
    end

    local randBase = math.random()
    local rand = player:randItens()
    local randHit = math.random(configMining.hit.danoMin, configMining.hit.danoMax)

    if configMining.level.active and player:getStorageValue(configMining.level.storageTentativas) >= configMining.level[player:getStorageValue(configMining.level.storageNivel) + 1].qntMin then
        player:setStorageValue(configMining.level.storageNivel, player:getStorageValue(configMining.level.storageNivel) + 1)
        player:sendTextMessage(22, configMining.msg.upNivel:format(configMining.level[player:getStorageValue(configMining.level.storageNivel)].name))
        player:getPosition():sendMagicEffect(50)
    end

    if target.actionid ~= configMining.actionIdPedras then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(22, configMining.msg.naoLocal)
        return true
    end

    if item.itemid == configMining.idPick or item.itemid == configMining.idPickEspecial then
        if configMining.hit.active and configMining.hit.chance >= randBase then
            player:getPosition():sendMagicEffect(CONST_ME_STONES)
            player:getPosition():sendMagicEffect(1)
            player:addHealth(-randHit)
            player:sendTextMessage(22, configMining.msg.dano)
        end

        if rand.chancePickNormal >= randBase and item.itemid == configMining.idPick then
            local name = ItemType(rand.itemid)
            if configMining.level.active then
                local playerNivel = player:getStorageValue(configMining.level.storageNivel)
                if rand.level and playerNivel < rand.nivelMin then
                    player:getPosition():sendMagicEffect(CONST_ME_POFF)
                    player:sendTextMessage(22, configMining.msg.naoNivelSuficiente:format(rand.nivelMin))
                    return true
                end

                player:setStorageValue(configMining.level.storageTentativas, (player:getStorageValue(configMining.level.storageTentativas) + 1))
            end

            player:getPosition():sendMagicEffect(CONST_ME_HEARTS)
            player:addItem(rand.itemid, 1)
            player:sendTextMessage(22, string.format(configMining.msg.minerouWin, name:getName()))
            return true
        elseif rand.chancePickEspecial >= randBase and item.itemid == configMining.idPickEspecial then
            local name = ItemType(rand.itemid)
            if configMining.level.active then
                local playerNivel = player:getStorageValue(configMining.level.storageNivel)
                if rand.level and playerNivel < rand.nivelMin then
                    player:getPosition():sendMagicEffect(CONST_ME_POFF)
                    player:sendTextMessage(22, configMining.msg.naoNivelSuficiente:format(rand.nivelMin))
                    return true
                end

                player:setStorageValue(configMining.level.storageTentativas, (player:getStorageValue(configMining.level.storageTentativas) + 1))
            end

            player:addItem(rand.itemid, 1)
            player:sendTextMessage(22, string.format(configMining.msg.minerouWin, name:getName()))
            player:getPosition():sendMagicEffect(CONST_ME_HEARTS)
            if configMining.msg.usarEspecial then
                player:sendTextMessage(configMining.msg.especial, TALKTYPE_MONSTER_sendTextMessage, true)
            end
            return true
        else
            player:sendTextMessage(configMining.msg.fail, toPosition, math.random(255))
            toPosition:sendMagicEffect(4)
            return true
        end
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(22, configMining.msg.naoPick)
        return false
    end

    return true
end

mining:id(configMining.idPick, configMining.idPickEspecial)
mining:register()
