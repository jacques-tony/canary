local crystalCoins = Action()


local cfgItems = {{3043, 25}}

function crystalCoins.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(3043) and player:getStorageValue(152319) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(152319) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You found 250k.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(152319, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

crystalCoins:uid(21007)
crystalCoins:register()	
