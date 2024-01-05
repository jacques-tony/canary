local config = {
    castle_area_center = Position(17611, 17365, 7), -- O centro da área do castelo.
    add_outEvent = nil, -- Não mexa.
    
    castle_open = 121 * 60 * 1000, -- O castelo será aberto a cada 2 minutos.
    castle_closed = 30 * 60 * 1000, -- O castelo será fechado após passar 1 minuto aberto.

    actionid_open = 13716, -- O castelo está liberado para o evento.
    actionid_closed = 12124, -- O castelo está fechado, somente a guilda dominate pode entrar.

    teleport_id = 37001, -- Id do teleport.
    castle_teleport = Position(17586, 17560, 6) -- A posição do teleport localizado no templo.
}

function __setTeleportCastle(aid)
    local tile = Tile(config.castle_teleport)
    if not tile then 
        return true
    end

    local teleport = tile:getItemById(config.teleport_id)
    if not teleport then
        return true
    end
    
    teleport:setActionId(aid)
    if teleport:getActionId() == config.actionid_open then
        Game.broadcastMessage('Access to Phoenix Castle has been opened, now you can try to dominate the dominant guilds castle!', MESSAGE_EVENT_ADVANCE)
    end
    
    if teleport:getActionId() == config.actionid_closed then
        Game.broadcastMessage('Access to the castle has been closed, only the dominant guild can enter at this time!', MESSAGE_EVENT_ADVANCE)
        local players = Game.getSpectators(config.castle_area_center, true, true, 30, 30, 30, 30);
        for i = 1, #players do
            local player = players[i]
            if not player:isPlayer() then
                return true
            end
            
            local guild = player:getGuild()
            if not guild then
                return true
            end
            
            local guildId = guild:getId()
            if Game.getStorageValue(3560) ~= guildId then
                player:teleportTo(Position(17612, 17398, 7))
                player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            end
        end
    end
    return true
end

function __startTime_castleOpen()
    if config.add_outEvent then
        stopEvent(config.add_outEvent)
    end
        
    config.add_outEvent = addEvent(function()
        __setTeleportCastle(config.actionid_open)
        __startTime_castleClosed()
    end, config.castle_open)
end

function __startTime_castleClosed()
    if config.add_outEvent then
        stopEvent(config.add_outEvent)
    end
    
    config.add_outEvent = addEvent(function()
        __setTeleportCastle(config.actionid_closed)
        __startTime_castleOpen()
    end, config.castle_closed)
end

local teleportCastle = GlobalEvent("__teleportCastle")
function teleportCastle.onStartup()
    db.query("UPDATE `guilds` SET `owns_castle` = 0;")
    __startTime_castleClosed()
end
teleportCastle:register()   

local castleLever = Action()
function castleLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local guild = player:getGuild()
    if not guild then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have a guild.")
        return true
    end
    
    local castleTimer = Game.getStorageValue(3561)
    if castleTimer >= os.time() then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The castle is already dominated. You can dominate the castle again " .. os.date("%X", castleTimer) .. ".")
        return true
    end 

    local newGuild = guild:getId()
    local newGuildName = guild:getName()
    local oldGuild = Game.getStorageValue(3560)
     
    if newGuild ~=  oldGuild then
        Game.broadcastMessage("A guild ".. newGuildName .." dominated the castle.", MESSAGE_EVENT_ADVANCE)
        __setTeleportCastle(config.actionid_closed)
        __startTime_castleOpen()
        Game.setStorageValue(3560, newGuild)
		db.query("UPDATE `guilds` SET `owns_castle` = 0;")
		db.query("UPDATE `guilds` SET `owns_castle` = 1 WHERE `id` = ".. newGuild ..";") 
        Game.setStorageValue(3561, os.time() + (2 * 60))
        local currentGuild = Guild(oldGuild)
        if currentGuild then
            local onlineMembers = currentGuild:getMembersOnline()
            if onlineMembers then
                for k, member in ipairs(onlineMembers) do
                    if member:getStorageValue(40) > 0 then
                        member:setStorageValue(40, 0)
                        member:teleportTo(Position(17612, 17398, 7))
                        member:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
                        member:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your guild lost its castle! You got kicked out!")
                    end
                end
            end
        else
 --           print("not currentGuild")
        end
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your guild already dominates the castle.")
    end
    return true
end
castleLever:aid(9009)
castleLever:register()