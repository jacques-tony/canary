local config = {
    scrollIds = {55072, 55070, 55071, 55068}, -- Adicione os IDs dos seus scrolls aqui
    premiumDays = {01, 07, 15, 30}, -- Adicione os dias correspondentes para cada scroll aqui
}

for i, scrollId in ipairs(config.scrollIds) do
    local days = config.premiumDays[i]

    local premiumScroll = Action()
    function premiumScroll.onUse(player, item, fromPosition, target, toPosition, isHotkey)
        player:addPremiumDays(days)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received " .. days .. " days of premium account.")
        item:remove(1)
        addEvent(function()
            if player:isPlayer() then
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You have " .. player:getPremiumDays() .. " days of premium account.")
            end
        end, 2500)
        return true
    end

    premiumScroll:id(scrollId)
    premiumScroll:register()
end
