local talkactions = TalkAction("!resetinfo")
function talkactions.onSay(player, words, param) 
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have ".. player:getResets() .." resets and needs level ".. player:getResetLevel() .." e ".. player:getResetsPrice() .." golds to reset.")
    return false
end
talkactions:groupType("normal")
talkactions:register()