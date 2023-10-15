local umbralHammer = Action()

local cfgItems = {{20079, 1}}

function umbralHammer.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(20079) and player:getStorageValue(28080) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(28080) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you crude umbral hammer.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(28080, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

umbralHammer:uid(22415)
umbralHammer:register()
