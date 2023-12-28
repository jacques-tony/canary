local resetLevelVerification5 = MoveEvent()

local Storage = 500
local requiredLevel = 1700 -- Defina o nível necessário para acessar a área

function resetLevelVerification5.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17549, y = 19067, z = 12}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 4 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 2 resets to access this area..")
        player:teleportTo({x = 17549, y = 19067, z = 12}) 
        return true
    end

    return true
end

resetLevelVerification5:aid(12004)
resetLevelVerification5:register()
