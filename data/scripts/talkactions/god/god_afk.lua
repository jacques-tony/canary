local talk = TalkAction("/afk")

function sendAfkMessage(cid, stop)
    local player = Player(cid)
    if stop then
        stopEvent(afkEvent)
        return false
    end
    if player then
        player:say("AFK!")
        player:getPosition():sendMagicEffect(32) -- 32 = stun hardcoded
    else
        stopEvent(afkEvent)
    end
    afkEvent = addEvent(sendAfkMessage, 5000, cid, stop)
end
function talk.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end
    
    if player then
        if param and param == "stop" then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "VOU PARAR SEU AFK.")
            stopEvent(afkEvent)
            return true
        else
            afkEvent = addEvent(sendAfkMessage, 5000, player:getId(), false)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "MODO AFK ATIVADO")
        end
    end
	return false
end

talk:separator(" ")
talk:groupType("god")
talk:register()
