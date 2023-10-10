local elitedrakenhelmet = Action()

local cfgItems = {{11689, 1}}

function elitedrakenhelmet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(11689) and player:getStorageValue(95137) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(95137) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find one elite draken helmet.")
         
        local bag = player:addItem(2859) -- Red Bag id 
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(95137, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

elitedrakenhelmet:uid(3005)
elitedrakenhelmet:register()
