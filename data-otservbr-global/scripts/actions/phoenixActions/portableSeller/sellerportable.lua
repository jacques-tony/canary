local amz_time = 0
local cooldown = 10 -- 10 segundos para poder usar o portatil novamente.
local item_portable = 55075
local backpacks = {23721, 2854, 2853, 2872, 3253, 3503, 3504, 5801, 5927, 5926, 5949, 5950, 6104, 6109, 6112, 6505, 6509, 6510, 7342, 7343, 8860, 8861, 9601, 9605, 10202, 10324, 10327, 10346, 11698, 14248, 14249, 14674, 16099, 16100, 18339, 19159, 20347, 21292, 21295, 21411, 22084, 23525, 24393, 24395, 25780, 28571, 30197, 31282, 31625, 32620}

function Container.getLootBackpack(self, target)
    local list = {}
    for index = 0, (self:getSize() - 1) do
        local item = self:getItem(index)
        if item and self:getId() == target then
            table.insert(list, item)
        end
    end
    return list
end

local action = Action()
function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local sold = false
    local profited = 0

    if amz_time >= os.time() then
        player:sendCancelMessage("[Portable]:\nYou cooldown " .. cooldown .. " seconds.")
        return true
    end

    if not table.contains(backpacks, target:getId()) then
        player:sendCancelMessage("[Portable]:\nShould only be used in backpacks.")
        return true
    end

    for category, items in pairs(LootShopConfigTable) do -- LootShopConfigTable LIB!
        for _, item in ipairs(items) do
            for _, loot in pairs(target:getLootBackpack(target:getId())) do
                if loot:getId() == item.clientId then
                    local itemCount = loot:getCount()
                    if itemCount > 0 then
                        local money = itemCount * item.sell
                        sold, profited = true, profited + money
                        loot:remove(itemCount)
                    end
                end
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