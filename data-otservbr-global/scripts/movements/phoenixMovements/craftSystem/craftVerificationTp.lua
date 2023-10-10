local craftVerificationTp = MoveEvent()

local Storage = 57572

local quantia = 1
function craftVerificationTp.onStepIn(creature, item, position, fromPosition)
local player = Player(creature)
if not player then return true end

if player:getStorageValue(Storage) < 1 then
	player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to get your reward before trying to leave...")
    player:teleportTo({x = 18357, y = 18240, z = 15})		
	return true 
end
 
return true
end

craftVerificationTp:uid(36996)
craftVerificationTp:register() 