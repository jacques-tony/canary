local yalaharimask = Action()

local cfgItems = {{8864, 1}}

function yalaharimask.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(8864) and player:getStorageValue(25137) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(25137) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one yalahari mask.")
         
        local bag = player:addItem(2859) -- Red Bag id 
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(25137, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

yalaharimask:uid(9778)
yalaharimask:register()
