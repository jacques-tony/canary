local config = {
	{ name="Sala de craft", position = Position(17564, 17561, 6) },
	{ name="Sala de monstros", position = Position(17501, 17620, 7) }
}

local teleportBoss = Action()
function teleportBoss.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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
teleportBoss:id(33313)
teleportBoss:register()
