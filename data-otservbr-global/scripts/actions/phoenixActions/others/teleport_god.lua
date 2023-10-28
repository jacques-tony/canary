local config = {
	{ name="Staff house", position = Position(17510, 17569, 6) },
    { name = "Temple City", position = Position(17563, 17566, 6) },
    { name = "Training Room", position = Position(17638, 17565, 5) },
    { name = "Loot Room", position = Position(17590, 17578, 6) },
    { name = "Boss Room", position = Position(17453, 17620, 9) },
    { name = "Quest Room", position = Position(17494, 17630, 8) },
    { name = "Monster Room", position = Position(17501, 17620, 7) }
}

local teleport_god = Action() 
function teleport_god.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local window = ModalWindow {
		title = "Teleport Rapidos",
		message = "lista de waypoints"
	}
	for i, info in pairs(config) do
		window:addChoice(string.format("%s", info.name), function (player, button, choice)
			if button.name ~= "Select" then
				return true
			end
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You were teleported to " .. info.name)
			player:teleportTo(info.position)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end)
	end
	window:addButton("Select")
	window:addButton("Close")
	window:setDefaultEnterButton(0)
	window:setDefaultEscapeButton(1)
	window:sendToPlayer(player)
	return true
end 
teleport_god:id(33313) 
teleport_god:register()
