local resetLevelVerification12 = MoveEvent()

local Storage = 500
local requiredLevel = 2400 -- Defina o nível necessário para acessar a área

function resetLevelVerification12.onStepIn(creature, item, position, fromPosition)
    local player = Player(creature)
    if not player then return true end

    -- Verifica se o jogador tem o nível necessário
    if player:getLevel() < requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to be at least level " .. requiredLevel .. " to access this area.")
        player:teleportTo({x = 17509, y = 17611, z = 5}) 
        return true
    end

    -- Verifica se o jogador completou a quest necessária
    if player:getStorageValue(Storage) < 9 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 9 resets to access this area..")
        player:teleportTo({x = 17509, y = 17611, z = 5}) 
        return true
    end

    return true
end

resetLevelVerification12:aid(12013)
resetLevelVerification12:register()
