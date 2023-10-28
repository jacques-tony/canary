local config = {
    { name = "Temple City", position = Position(17563, 17566, 6) },
    { name = "Training Room", position = Position(17638, 17565, 5) },
    { name = "Loot Room", position = Position(17590, 17578, 6) },
    { name = "Boss Room", position = Position(17453, 17620, 9) }, 
    { name = "Quest Room", position = Position(17494, 17630, 8) },
    { name = "Monster Room", position = Position(17501, 17620, 7) }
}

local cooldownTime = 60 -- Cooldown em segundos

local teleportCooldowns = {} -- Armazena os tempos de cooldown por jogador

local teleportBoss = Action()
function teleportBoss.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if teleportCooldowns[player:getId()] and os.time() - teleportCooldowns[player:getId()] < cooldownTime then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Wait " .. (cooldownTime - (os.time() - teleportCooldowns[player:getId()])) .. " seconds to use again.")
        return false
    end

    local resetConfig = {
        redskull = true, -- Defina como 'true' se o jogador precisar estar sem red skull
        pz = true, -- Defina como 'true' se o jogador precisar estar em uma protection zone
        battle = true -- Defina como 'true' se o jogador precisar estar fora de batalha 
    }

    if resetConfig.redskull and player:getSkull() == 4 then
        player:sendCancelMessage("You need to be without red skull to use the cube.")
    elseif resetConfig.pz and not getTilePzInfo(player:getPosition()) then
        player:sendCancelMessage("You need to be in a protection zone to use the cube.")
    elseif resetConfig.battle and player:getCondition(CONDITION_INFIGHT) then
        player:sendCancelMessage("You need to be without battle to use the cube.") 
    else
        local window = ModalWindow {
            title = "Teleport Cube",
            message = "Waypoint List"
        }
        for i, info in pairs(config) do
            window:addChoice(string.format("%s", info.name), function(player, button, choice)
                if button.name ~= "Select" then
                    return true
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have been teleported to " .. info.name)
                player:teleportTo(info.position)
                player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
                teleportCooldowns[player:getId()] = os.time()
                return true
            end)
        end
        window:addButton("Select")
        window:addButton("Close")
        window:setDefaultEnterButton(0)
        window:setDefaultEscapeButton(1)
        window:sendToPlayer(player)
    end

    return true
end
teleportBoss:id(23515)
teleportBoss:register()
