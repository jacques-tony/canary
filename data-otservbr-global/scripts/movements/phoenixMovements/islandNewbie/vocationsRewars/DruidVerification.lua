local DruidVerification = MoveEvent()

function DruidVerification.onStepIn(creature, item, position, fromPosition)
	local player = Player(creature)
	if not player then return true end
	
    local vocation = player:getVocation():getId()
    if not isInArray({2, 6}, vocation) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Você não é um Druid.")
        player:teleportTo({x = 17626, y = 17700, z = 6})		
		return true
	end
return true
end
 
DruidVerification:aid(10997)
DruidVerification:register()	