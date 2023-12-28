local resetLevelVerification9 = MoveEvent()

local Storage = 500
local requiredLevel = 2100 -- Defina o nível necessário para acessar a área

function resetLevelVerification9.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17700, y = 18838, z = 10}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 7 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 6 resets to access this area..")
        player:teleportTo({x = 17700, y = 18838, z = 10}) 
        return true
    end

    return true
end

resetLevelVerification9:aid(12010)
resetLevelVerification9:register()
