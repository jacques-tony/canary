local blacksteelSword = Action()

local cfgItems = {{7406, 1}}

function blacksteelSword.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(7406) and player:getStorageValue(48490) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(48490) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you blacksteel sword.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(48490, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

blacksteelSword:uid(44416)
blacksteelSword:register()
