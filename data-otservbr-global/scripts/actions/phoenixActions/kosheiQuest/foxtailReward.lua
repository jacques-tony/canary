local foxtailReward = Action()

local cfgItems = {{27565, 1}}

function foxtailReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(27565) and player:getStorageValue(75439) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(75439) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one foxtail amulet.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(75439, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

foxtailReward:uid(21120) 
foxtailReward:register()
