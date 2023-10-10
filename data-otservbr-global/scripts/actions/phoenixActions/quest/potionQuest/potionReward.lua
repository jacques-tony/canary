local potionReward = Action()

local cfgItems = {{30006, 1}}

function potionReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(30006) and player:getStorageValue(95439) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(95439) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one bonus heal potion.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(95439, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

potionReward:uid(25153) 
potionReward:register()
