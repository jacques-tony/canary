local teleportHouse = Action()
function teleportHouse.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:isPzLocked() then
        player:sendCancelMessage("Não é possível usar enquanto você estiver em combate.")
        return true
    end
 
    local house = player:getHouse()
    if not house then
        player:sendCancelMessage("Você não possui uma casa.")
        return true
    end
	
	local storage_time = 235411
	local timeOnUse  = 2 * 60 -- 2 minutos.
	
	if player:getStorageValue(storage_time) > os.time() then
		local message = "Só pode ser usado novamente ás ".. os.date('%H', player:getStorageValue(storage_time)) ..":".. os.date('%M', player:getStorageValue(storage_time)) ..":".. os.date('%S', player:getStorageValue(storage_time)) .." do dia ".. os.date('%d', player:getStorageValue(storage_time)) .."/".. os.date('%m', player:getStorageValue(storage_time)) .."/".. os.date('%Y', player:getStorageValue(storage_time))
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message)
		return true
	end

	player:say(player:getName() .." foi teleportado para a house.")
	player:setStorageValue(storage_time, os.time() + timeOnUse)
    player:teleportTo(house:getExitPosition())
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
teleportHouse:id(8827) 
teleportHouse:register()
