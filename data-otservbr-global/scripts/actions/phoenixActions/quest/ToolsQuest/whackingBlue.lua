local whackingBlue = Action()

local cfgItems = {{9598, 1}}

function whackingBlue.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(9598) and player:getStorageValue(11178) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(11178) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one whacking.")
         
        local bag = player:addItem(2859) -- Red Bag id 
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(11178, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

whackingBlue:uid(1116)
whackingBlue:register()
 