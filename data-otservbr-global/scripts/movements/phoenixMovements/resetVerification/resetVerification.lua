local resetVerification = MoveEvent()

local Storage = 57604

local quantia = 1
function resetVerification.onStepIn(creature, item, position, fromPosition)
local player = Player(creature)
if not player then return true end

if player:getStorageValue(Storage) < 1 then
	player:sendTextMessage(MESSAGE_INFO_DESCR, "You do not have access to this area, do the access quest.")
    player:teleportTo({x = 17499, y = 17611, z = 6})		
	return true
end
 
return true
end

resetVerification:aid(11997) 
resetVerification:register() 