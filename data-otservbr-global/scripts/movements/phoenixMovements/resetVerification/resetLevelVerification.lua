local resetLevelVerification = MoveEvent()

local Storage = 500
local requiredLevel = 1400 -- Defina o nível necessário para acessar a área

function resetLevelVerification.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17509, y = 17611, z = 6}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 1 resets to access this area..")
        player:teleportTo({x = 17509, y = 17611, z = 6}) 
        return true
    end

    return true
end

resetLevelVerification:aid(11998)
resetLevelVerification:register()
