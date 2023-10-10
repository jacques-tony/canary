local arcaneStaff = Action()

local cfgItems = {{3341, 1}}

function arcaneStaff.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(3341) and player:getStorageValue(15135) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(15135) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one Arcane Staff.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(15135, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

arcaneStaff:uid(21001)
arcaneStaff:register()
