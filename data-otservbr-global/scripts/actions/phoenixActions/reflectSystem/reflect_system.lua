local action = Action()
function action.onUse(player, item, fromPos, target, toPos, isHotkey)
    if player:getReflectLevel() >= reflect_system.limit_stones then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have reached max reflect.")
        return true
    end

    local stone = reflect_system.stones[item.itemid]
    if not stone then
        return true
    end

    if stone.chance_to_fail < math.random(1, 100) then
        local before = reflect_system.increase_reflect * player:getReflectLevel()
        if player:getReflectLevel() >= 1 then
            player:setReflectLevel(player:getReflectLevel() - 1)
        end
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Ah, it failed and you went back from reflect %.2f%% to %.2f%%.", before, reflect_system.increase_reflect * player:getReflectLevel()))
    else
        player:setReflectLevel(player:getReflectLevel() + 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You added +%.2f%% reflect to your character, now you have a total of +%.2f%% reflect.", reflect_system.increase_reflect, reflect_system.increase_reflect * player:getReflectLevel()))
        player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
    end
    item:remove(1)
    return true
end
for itemid, table in pairs(reflect_system.stones) do
    action:id(itemid)
end
action:register()

local healthChange = CreatureEvent("REFLECT_System___HealthChange")
function healthChange.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker then
        return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end

    if primaryType == COMBAT_HEALING then
    	return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end

    if creature:getReflectLevel() > 0 then
        if attacker:isMonster() or attacker:isPlayer() then
            if reflect_system.reflect_chance >= math.random(1, 100) then
                attacker:addHealth(-math.floor(math.abs(primaryDamage) * (reflect_system.increase_reflect * creature:getReflectLevel() / 100)), reflect_system.reflect_damage_color)
                creature:say("REFLECT!", TALKTYPE_MONSTER_SAY)
            end
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
healthChange:register()

local manaChange = CreatureEvent("REFLECT_System___ManaChange")
function manaChange.onManaChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker then
        return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end
    
    if creature:getReflectLevel() > 0 then
        if attacker:isMonster() or attacker:isPlayer() then
            if reflect_system.reflect_chance >= math.random(1, 100) then
                attacker:addHealth(-math.floor(math.abs(primaryDamage) * (reflect_system.increase_reflect * creature:getReflectLevel() / 100)), reflect_system.reflect_damage_color)
                creature:say("REFLECT!", TALKTYPE_MONSTER_SAY)
            end
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
manaChange:register()

local login = CreatureEvent('REFLECT_System___Login')
function login.onLogin(player)
    player:registerEvent("REFLECT_System___HealthChange")
    player:registerEvent("REFLECT_System___ManaChange")
    return true
end
login:register()

local talkaction = TalkAction("!reflect")
function talkaction.onSay(player, words, param)
    player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("You have %.2f%% more reflect!", reflect_system.increase_reflect * player:getReflectLevel()))
end
talkaction:groupType("normal")
talkaction:register()