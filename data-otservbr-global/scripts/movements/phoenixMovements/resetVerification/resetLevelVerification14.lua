local resetLevelVerification14 = MoveEvent()

local Storage = 500
local requiredLevel = 2550 -- Defina o nível necessário para acessar a área

function resetLevelVerification14.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17604, y = 18615, z = 6}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 10 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 6 resets to access this area..")
        player:teleportTo({x = 17604, y = 18615, z = 6}) 
        return true
    end

    return true
end

resetLevelVerification14:aid(12016)
resetLevelVerification14:register()
