local config = {
    storage = 30070,
    tokenItemId = 19082,
    tokensPerHour = 1,
    checkDuplicateIps = false
}

local onlineTokensEvent = GlobalEvent("GainTokenPerHour")

function onlineTokensEvent.onThink(interval)
    local players = Game.getPlayers()
    if #players == 0 then
        return true
    end

    local checkIp = {}
    for _, player in pairs(players) do
        local tile = player:getPosition():getTile()
          if not tile then
            return true
        end

        if tile:hasFlag(TILESTATE_PROTECTIONZONE) then
            return true
        end

        local ip = player:getIp()
        if ip ~= 0 and (not config.checkDuplicateIps or not checkIp[ip]) then
            checkIp[ip] = true
            local seconds = math.max(0, player:getStorageValue(config.storage))
            if seconds >= 3600 then 
                player:setStorageValue(config.storage, 0)
                local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
                if inbox and inbox:getEmptySlots() > 0 then
                    inbox:addItem(config.tokenItemId, config.tokensPerHour)
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received an Online Token for being online for one hour.")
                end
                return true
            end
            player:setStorageValue(config.storage, seconds +math.ceil(interval/1000))
        end
    end
    return true
end

onlineTokensEvent:interval(10000)
onlineTokensEvent:register()