local talk = TalkAction("!attackspeed")
function talk.onSay(player, words, param)
    player:popupFYI("Your Attack Speed: ".. string.format("%.2f", 1000 / player:getAttackSpeed()) .." attacks per second.\nReset your character more often to increase attack speed!")
    return true
end
talk:separator(" ")
talk:groupType("normal")
talk:register()
