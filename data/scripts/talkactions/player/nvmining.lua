local nvmining = TalkAction("!nvmining")
function nvmining.onSay(player, words, param)
    -- Obtém o nível atual do jogador e o valor de tentativas restantes.
    local currentLevel = player:getStorageValue(configMining.level.storageNivel)
    local currentTentativas = player:getStorageValue(configMining.level.storageTentativas)
    
    -- Obtém informações sobre o nível atual e o próximo nível.
    local currentLevelData = configMining.level[currentLevel]
    local nextLevelData = configMining.level[currentLevel + 1]
    
    -- Calcula os pontos restantes para o próximo nível.
    local pointsToNextLevel = nextLevelData.qntMin - currentTentativas
    
    -- Constrói a mensagem a ser exibida.
    local message = string.format(
        "You are at level %s and have %d points left for the level %s.",
        currentLevelData.name,
        pointsToNextLevel,
        nextLevelData.name
    )
    
    -- Exibe a mensagem para o jogador
    player:sendTextMessage(MESSAGE_INFO_DESCR, message)
    return false
end
nvmining:separator(" ")
nvmining:groupType("normal")
nvmining:register()