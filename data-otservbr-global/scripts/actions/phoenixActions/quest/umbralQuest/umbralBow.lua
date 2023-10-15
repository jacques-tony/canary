local umbralBow = Action()

local cfgItems = {{20082, 1}}

function umbralBow.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(20082) and player:getStorageValue(28080) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(28080) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find crude umbral bow.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(28080, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

umbralBow:uid(22523)
umbralBow:register()
