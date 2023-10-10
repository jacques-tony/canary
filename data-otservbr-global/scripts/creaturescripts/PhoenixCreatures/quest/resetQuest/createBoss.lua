local creatureevent = CreatureEvent('__PROX_onKillEvent')
creatureevent:type('kill')
function creatureevent.onKill(creature, target)
    local player = Player(creature)
    if not player then
        return true
    end

    if target:isPlayer() or target:getMaster() then
        return true
    end

    local oldName = "Black Knight" -- Nome do monstro que precisa matar.
    local newName = "Orshabaal" -- Nome do monstro que vai ser criado.
    local position = Position(17549, 17820, 10) -- Posição onde o monstro vai ser criado.

    if target:getName() == oldName then
        Game.createMonster(newName, position)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Do you think you beat me? MUHAHAHAHA")
    end
    return true
end 
creatureevent:register()

local creatureevent = CreatureEvent('__registerOnKill') 
creatureevent:type('login')
function creatureevent.onLogin(player)
    player:registerEvent('__PROX_onKillEvent')
    return true
end
creatureevent:register()