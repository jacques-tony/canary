local backpackofholding = Action()

local cfgItems = {{3253, 1}}

function backpackofholding.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(3253) and player:getStorageValue(151300) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(151300) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one Backpack Of Holding.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(151300, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

backpackofholding:uid(21008)
backpackofholding:register()	