local amz_time = 0
local cooldown = 10 -- 10 segundos para poder usar o portatil novamente.
local item_portable = 43852

local action = Action()
function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local sold = false
    local profited = 0

    if amz_time >= os.time() then
        player:sendCancelMessage("[Portable]:\nYou cooldown " .. cooldown .. " seconds.")
        return true
    end

    amz_time = os.time() + cooldown
    for category, items in pairs(LootShopConfigTable) do -- LootShopConfigTable LIB!
        for _, item in ipairs(items) do
            local itemCount = player:getItemCount(item.clientId)
            if itemCount > 0 then
                local money = itemCount * item.sell
                sold, profited = true, profited + money
                player:removeItem(item.clientId, itemCount)
            end
        end
    end

    if sold then
        player:setBankBalance(player:getBankBalance() + profited)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "[Portable]:\nYou sold all items and profited " .. profited .. " golds.")
    else
        player:sendCancelMessage("[Portable]:\nYou have no items to sell.")
    end
    return true
end
action:id(item_portable)
action:register()