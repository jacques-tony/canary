local softboots = Action()

local cfgItems = {{6529, 1}}

function softboots.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(6529) and player:getStorageValue(15133) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(15133) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one Soft Boots.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15133, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

softboots:uid(21004)
softboots:register()	