local SorcererVerification = MoveEvent()

function SorcererVerification.onStepIn(creature, item, position, fromPosition)
	local player = Player(creature)
	if not player then return true end
	
    local vocation = player:getVocation():getId()
    if not isInArray({1, 5}, vocation) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Você não é um Sorcerer.")
        player:teleportTo({x = 17626, y = 17700, z = 6})		
		return true
	end
return true
end
 
SorcererVerification:aid(10996)
SorcererVerification:register()	