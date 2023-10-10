local yalaharilegpiece = Action()

local cfgItems = {{8863, 1}}

function yalaharilegpiece.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(8863) and player:getStorageValue(25137) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(25137) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one yalahari legs piece.")
         
        local bag = player:addItem(2859) -- Red Bag id 
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(25137, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

yalaharilegpiece:uid(9777)
yalaharilegpiece:register()
 