local umbralSlayer = Action()

local cfgItems = {{20067, 1}}

function umbralSlayer.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(20067) and player:getStorageValue(28080) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(28080) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you crude umbral slayer.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(28080, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

umbralSlayer:uid(22403)
umbralSlayer:register()
