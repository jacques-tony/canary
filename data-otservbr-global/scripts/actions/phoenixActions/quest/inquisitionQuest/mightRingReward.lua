local fireWalkerBoots = Action()

local cfgItems = {{18935, 1}} 

function fireWalkerBoots.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(18935) and player:getStorageValue(57632) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(57632) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one might ring inquisition.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(57632, 1)
    else 
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

fireWalkerBoots:uid(57631)
fireWalkerBoots:register() 
