local orcishMaul = Action()

local cfgItems = {{7392, 1}}

function orcishMaul.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(7392) and player:getStorageValue(48490) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(48490) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you Orcish Maul.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(48490, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

orcishMaul:uid(44414)
orcishMaul:register()
