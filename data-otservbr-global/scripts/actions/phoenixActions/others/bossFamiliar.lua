local config = {
    [844] = {name = "Ferumbras"},
    [1224] = {name = "King Zelos"},
    [1468] = {name = "Morshabaal"},
}

local action = Action()
function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local window = ModalWindow({
        title = "Obtain Familiar",
        message = "Here are all the familiars members.",
    })

    local hasAllFamiliars = true
    for id, familiar in pairs(config) do
        if not player:hasFamiliar(id) then
            hasAllFamiliars = false
            window:addChoice(familiar.name, function(player, button, choice)
                if button.name ~= "Obtain" then
                    return true
                end

                if player:getItemCount(item.itemid) == 0 then
                    player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry, but you don't have this item. Please keep it in your inventory.")
                    return true
                end

                player:addFamiliar(id)
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You obtained the " .. familiar.name .. " familiar.")
                item:remove(1)
            end)
        else
            window:setMessage("You already have the all familiars.")
        end
    end

    if hasAllFamiliars then
        window:setMessage("You already have all the familiars.")
    else
        window:addButton("Obtain")
    end

    window:addButton("Close")
    window:setDefaultEnterButton(0)
    window:setDefaultEscapeButton(1)
    window:sendToPlayer(player)
    return true
end
action:id(39757) 
action:register() 