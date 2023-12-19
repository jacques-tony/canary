local carts = {
    { clickPos = {x = 16924, y = 17731, z = 8}, destination = Position(17018, 17660, 8) },
    { clickPos = {x = 17018, y = 17659, z = 8}, destination = Position(16924, 17732, 8) },
    { clickPos = {x = 16927, y = 17730, z = 8}, destination = Position(17146, 17728, 8) },
    { clickPos = {x = 17146, y = 17727, z = 8}, destination = Position(16927, 17731, 8) },
    { clickPos = {x = 16930, y = 17731, z = 8}, destination = Position(16944, 17681, 8) },
    { clickPos = {x = 16943, y = 17681, z = 8}, destination = Position(16930, 17732, 8) },
    { clickPos = {x = 16952, y = 17687, z = 8}, destination = Position(16973, 17728, 8) },
    { clickPos = {x = 16972, y = 17728, z = 8}, destination = Position(16952, 17688, 8) },
    { clickPos = {x = 16978, y = 17733, z = 8}, destination = Position(17043, 17795, 8) },
    { clickPos = {x = 17042, y = 17795, z = 8}, destination = Position(16978, 17732, 8) },
}

local gnompronaCarts = Action()
function gnompronaCarts.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	for i = 1, #carts do
		if item:getPosition() == Position(carts[i].clickPos) then
			player:teleportTo(carts[i].destination)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	end
end

for j = 1, #carts do
	gnompronaCarts:position(carts[j].clickPos)
end
gnompronaCarts:register()
