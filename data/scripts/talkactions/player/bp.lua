local talk = TalkAction("!bp")

function talk.onSay(cid, words, param)
	local cost, p = 1000, Player(cid)
	if(not(p:isPzLocked())) then
		if(p:removeMoneyBank(cost)) then
			p:addItem(2854, 1)
			p:sendTextMessage(19, "You bought a backpack!")        
		else
			p:sendCancelMessage("You do not have "..cost.." gold coins to buy a backpack.")
		end
	else
		p:sendCancelMessage("You cannot buy a backpack when you are in battle.")
	end
return true
end

talk:separator(" ")
talk:groupType("normal")
talk:register()