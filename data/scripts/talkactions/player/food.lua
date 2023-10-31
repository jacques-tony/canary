local talk = TalkAction("!food")

function talk.onSay(cid, words, param)
	local cost, p = 500, Player(cid)
	if(not(p:isPzLocked())) then
		if(p:removeMoneyBank(cost)) then
			p:addItem(3725, 100)
			p:sendTextMessage(19, "You bought 100 brown mushrooms!")        
		else
			p:sendCancelMessage("You don't have "..cost.." gold coins to buy 100 brown mushrooms.") 
		end
	else
		p:sendCancelMessage("You cannot buy brown mushroom when you are in a battle.")
	end
return true
end


talk:separator(" ")
talk:groupType("normal")
talk:register()