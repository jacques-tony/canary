local frozenstarlight = Action()


local cfgItems = {{3249, 1}}

function frozenstarlight.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(3249) and player:getStorageValue(151319) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(151319) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one Frozen Starlight.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(151319, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

frozenstarlight:uid(21006)
frozenstarlight:register()	
