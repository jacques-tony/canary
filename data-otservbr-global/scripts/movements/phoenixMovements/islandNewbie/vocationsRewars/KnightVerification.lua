local KnightVerification = MoveEvent()

function KnightVerification.onStepIn(creature, item, position, fromPosition)
	local player = Player(creature)
	if not player then return true end
	
    local vocation = player:getVocation():getId()
    if not isInArray({4, 8}, vocation) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Você não é um Knight.")
        player:teleportTo({x = 17626, y = 17700, z = 6})		
		return true
	end
return true
end
 
KnightVerification:aid(10998)
KnightVerification:register()	