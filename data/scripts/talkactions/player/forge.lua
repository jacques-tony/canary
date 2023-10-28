local forge = TalkAction("!openforge")

function forge.onSay(player, words, param)
    -- create log
    logCommand(player, words, param)

    local requiredStorage = 12222
    local cooldownStorage = 12233 -- Um valor de armazenamento para controlar o cooldown
    local cooldownTime = 60 -- Tempo de cooldown em segundos

    local currentTime = os.time() -- Obtém o tempo atual em segundos  

    -- Verifique se o jogador está no cooldown
    local lastUsage = player:getStorageValue(cooldownStorage)
    if lastUsage > 0 and (currentTime - lastUsage) < cooldownTime then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You must wait 1 minute to use the command again.") 
        return false
    end

    if player:getStorageValue(requiredStorage) == 1 then 
        player:openForge()
        player:setStorageValue(cooldownStorage, currentTime) -- Define o tempo de uso
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You do not have the necessary storage to use the '!openforge' command.")
    end
end

forge:groupType("normal")
forge:register()
