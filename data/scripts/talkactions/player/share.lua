local talk = TalkAction("!share")

function talk.onSay(player, words, param)
    local pLevelMin = player:getLevel() * (2/3)
    local pLevelMax = player:getLevel() / (2/3)

    player:popupFYI(string.format("-- Voce pode compartilhar Exp com player do level --\n\nLevel: %d ate level: %d", pLevelMin, pLevelMax))
	return true
end

talk:separator(" ")
talk:groupType("normal") 
talk:register()