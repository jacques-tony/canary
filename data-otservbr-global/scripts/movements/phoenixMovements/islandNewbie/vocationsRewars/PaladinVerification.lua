local PaladinVerification = MoveEvent()

function PaladinVerification.onStepIn(creature, item, position, fromPosition)
	local player = Player(creature)
	if not player then return true end
	
    local vocation = player:getVocation():getId()
    if not isInArray({3, 7}, vocation) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You are not a Paladin.")
        player:teleportTo({x = 17626, y = 17700, z = 6})		
		return true
	end
return true
end
 
PaladinVerification:aid(10999)
PaladinVerification:register()	