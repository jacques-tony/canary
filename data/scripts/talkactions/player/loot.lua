local talkaction = TalkAction("!loot")
function talkaction.onSay(player, words, param)
    local monster = MonsterType(param)
    if param == '' then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Command to use:\n!loot monster name.")
        return false
    end
    
    if not monster then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This monster does not exist.")
        return false
    end
    
    local lootList = {}
    for _, loot in pairs(monster:getLoot()) do
        local item = ItemType(loot.itemId)
        lootList[#lootList + 1] = "# " .. item:getName() .. " - drop: " .. (loot.chance / 1000) .. "%"
    end

    if #lootList ~= 0 then
        player:showTextDialog(639, table.concat(lootList, "\n"))
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This monster has no loot.")
    end
    return false
end

talkaction:separator(" ")
talkaction:groupType("normal")
talkaction:register()