local royaldrakenmail = Action()

local cfgItems = {{11686, 1}}

function royaldrakenmail.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(11686) and player:getStorageValue(95137) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(95137) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one royal draken mail.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(95137, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

royaldrakenmail:uid(3004)
royaldrakenmail:register()
