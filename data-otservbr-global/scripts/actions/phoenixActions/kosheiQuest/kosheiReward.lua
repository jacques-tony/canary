local kosheiReward = Action()

local cfgItems = {{7532, 1}}

function kosheiReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(7532) and player:getStorageValue(75439) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(75439) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one Koshei's ancient amulet.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(75439, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

kosheiReward:uid(21121) 
kosheiReward:register()
