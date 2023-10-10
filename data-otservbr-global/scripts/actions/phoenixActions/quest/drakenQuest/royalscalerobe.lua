local royalscalerobe = Action()

local cfgItems = {{11687, 1}}

function royalscalerobe.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(11687) and player:getStorageValue(95137) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(95137) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one royal scale robe.")
         
        local bag = player:addItem(2859) -- Red Bag id 
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(95137, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

royalscalerobe:uid(3003)
royalscalerobe:register()
 