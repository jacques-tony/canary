local resetLevelVerification6 = MoveEvent()

local Storage = 500
local requiredLevel = 1800 -- Defina o nível necessário para acessar a área

function resetLevelVerification6.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17592, y = 19085, z = 8}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 5 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 5 resets to access this area..")
        player:teleportTo({x = 17592, y = 19085, z = 8}) 
        return true
    end

    return true
end

resetLevelVerification6:aid(12006)
resetLevelVerification6:register()
