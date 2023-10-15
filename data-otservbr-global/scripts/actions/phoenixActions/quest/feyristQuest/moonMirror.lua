local moonMirror = Action()

local cfgItems = {{25975, 1}}

function moonMirror.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(25975) and player:getStorageValue(28079) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(28079) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find moon mirror.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(28079, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

moonMirror:uid(1153)
moonMirror:register()
