local resetLevelVerification4 = MoveEvent()

local Storage = 500
local requiredLevel = 1600 -- Defina o nível necessário para acessar a área

function resetLevelVerification4.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17467, y = 18978, z = 12}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 3 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 2 resets to access this area..")
        player:teleportTo({x = 17467, y = 18978, z = 12}) 
        return true
    end

    return true
end

resetLevelVerification4:aid(12003)
resetLevelVerification4:register()
