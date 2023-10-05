local barcoVerification = MoveEvent()

local Storage = 102030

local quantia = 1
function barcoVerification.onStepIn(creature, item, position, fromPosition)
local player = Player(creature)
if not player then return true end

if player:getStorageValue(Storage) < 1 then
	player:sendTextMessage(MESSAGE_INFO_DESCR, "You haven't picked up your items yet.")
    player:teleportTo({x = 17626, y = 17700, z = 6})		
	return true
end

return true
end

barcoVerification:aid(10995)
barcoVerification:register() 