local craftVerification = MoveEvent()

local Storage = 102031

local quantia = 1
function craftVerification.onStepIn(creature, item, position, fromPosition)
local player = Player(creature)
if not player then return true end

if player:getStorageValue(Storage) < 1 then
	player:sendTextMessage(MESSAGE_INFO_DESCR, "Voc� n�o tem acesso a essa �rea.")
    player:teleportTo({x = 17563, y = 17566, z = 6})		
	return true
end
 
return true
end

craftVerification:aid(11996)
craftVerification:register() 