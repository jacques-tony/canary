local infernalbolt = Action()

local cfgItems = {{6528, 1}}

function infernalbolt.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(6528) and player:getStorageValue(191950) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(191950) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one infernal bolt.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(191950, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end 

infernalbolt:uid(21009)
infernalbolt:register()
