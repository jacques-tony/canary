local stuffeddragon = Action()

local cfgItems = {{5791, 1}}

function stuffeddragon.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(5791) and player:getStorageValue(15134) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(15134) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Did you find one Stuffed Dragon.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15134, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward..")
       end
end

stuffeddragon:uid(21005)
stuffeddragon:register()	

