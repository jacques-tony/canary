local swanFeatherCloak = Action()

local cfgItems = {{25779, 1}}

function swanFeatherCloak.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getUniqueId(25779) and player:getStorageValue(28078) == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already chosen your reward.")
    elseif player:getStorageValue(28078) <= 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "did you find swan feather cloak.")
         
        local bag = player:addItem(2859) -- Red Bag id
        for i = 1, #cfgItems do
            bag:addItem(cfgItems[i][1], cfgItems[i][2])
        end
        player:setStorageValue(28078, 1)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You've already gotten your reward.")
       end
end

swanFeatherCloak:uid(1150)
swanFeatherCloak:register()
