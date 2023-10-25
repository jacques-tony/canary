local config = {
    {
        class = "axe",
        items = {
            {id = 43868, element = "FIRE"},
            {id = 26052, element = "ENERGY"},
            {id = 25991, element = "DEATH"},
            {id = 26022, element = "ICE"}
        }
    },
    {
        class = "sword",
        items = {
            {id = 43864, element = "FIRE"},
            {id = 26016, element = "ENERGY"},
            {id = 25985, element = "DEATH"},
            {id = 26046, element = "ICE"}
        }
    },
    {
        class = "club",
        items = {
            {id = 43866, element = "FIRE"},
            {id = 26028, element = "ENERGY"},
            {id = 25997, element = "DEATH"},
            {id = 26058, element = "ICE"}
        }
    },
    {
        class = "rod",
        items = {
            {id = 43885, element = "FIRE"},
            {id = 26043, element = "ENERGY"},
            {id = 26012, element = "DEATH"},
            {id = 26073, element = "ICE"}
        }
    },
    {
        class = "wand",
        items = {
            {id = 43882, element = "FIRE"},
            {id = 26040, element = "ENERGY"},
            {id = 26009, element = "DEATH"},
            {id = 26070, element = "ICE"}
        }
    }
}

local foundClass = nil
local itemsInSameClass = {}
local cooldownOnUse = 1 * 60 -- 1 minute.
local storage = 12233
local price = 1000 -- golds.

local function sendItemsElementsModal(player, item)
    local window = ModalWindow({
        title = "Change elements",
        message = "Select the element",
    })
  
    if #itemsInSameClass > 0 then
        for _, items in ipairs(itemsInSameClass) do
            local itemType = ItemType(items.id)
            if itemType then
                window:addChoice(items.element, function(player, button, choice)
                    if button.name ~= "Select" then
                        return true
                    end

                    if not player:removeMoneyBank(price) then
                        player:sendTextMessage(MESSAGE_INFO_DESCR, "You need " .. price .. " golds to change the element.")
                        return true
                    end

                    if player:getItemCount(item.itemid) == 0 then
                        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry, but you don't have this item. Please keep it in your inventory.")
                        return true
                    end

                    if player:getStorageValue(storage) >= os.time() then
                        player:sendTextMessage(MESSAGE_INFO_DESCR, "You must wait for the cooldown to change the element again.")
                        return true
                    end

                    item:transform(items.id)
                    player:setStorageValue(storage, os.time() + cooldownOnUse)
                end)
            end
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Item with ID " .. item.itemid .. " not found in the table.")
    end

    window:addButton("Select")
    window:addButton("Close")
    window:setDefaultEnterButton(0)
    window:setDefaultEscapeButton(1)
    window:sendToPlayer(player)
end

local action = Action()
function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    itemsInSameClass = {}

    for _, classData in ipairs(config) do
        for _, itemData in ipairs(classData.items) do
            if itemData.id == item.itemid then
                foundClass = classData.class
                break
            end
        end
    end

    if foundClass then
        for _, classData in ipairs(config) do
            if classData.class == foundClass then
                for _, itemData in ipairs(classData.items) do
                    table.insert(itemsInSameClass, itemData)
                end
            end
        end
    end

    sendItemsElementsModal(player, item)
end

for _, classData in ipairs(config) do
    for _, itemData in ipairs(classData.items) do
        action:id(itemData.id)
    end
end
action:register()