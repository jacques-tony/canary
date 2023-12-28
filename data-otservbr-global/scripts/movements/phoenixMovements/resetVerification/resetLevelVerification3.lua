local resetLevelVerification3 = MoveEvent()

local Storage = 500
local requiredLevel = 1500 -- Defina o nível necessário para acessar a área

function resetLevelVerification3.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17407, y = 18972, z = 13}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 2 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 2 resets to access this area..")
        player:teleportTo({x = 17407, y = 18972, z = 13}) 
        return true
    end

    return true
end

resetLevelVerification3:aid(12002)
resetLevelVerification3:register()
