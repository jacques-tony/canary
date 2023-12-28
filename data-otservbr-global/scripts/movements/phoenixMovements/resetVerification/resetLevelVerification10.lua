local resetLevelVerification10 = MoveEvent()

local Storage = 500
local requiredLevel = 2250 -- Defina o nível necessário para acessar a área

function resetLevelVerification10.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17583, y = 18861, z = 6}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 8 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 6 resets to access this area..")
        player:teleportTo({x = 17583, y = 18861, z = 6}) 
        return true
    end

    return true
end

resetLevelVerification10:aid(12011)
resetLevelVerification10:register()
