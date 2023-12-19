local talk = TalkAction("!share")

function talk.onSay(player, words, param)
    local pLevelMin = player:getLevel() * (2/3)
    local pLevelMax = player:getLevel() / (2/3)

    player:popupFYI(string.format("--You can share Exp with player of the level --\n\nLevel: %d up to level: %d", pLevelMin, pLevelMax))
	return true
end

talk:separator(" ")
talk:groupType("normal") 
talk:register()