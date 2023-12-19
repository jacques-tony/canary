local healthChange = CreatureEvent("RESET_Damage___HealthChange")
function healthChange.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker then
        return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end

    if primaryType == COMBAT_HEALING then
    	return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end

    if attacker:isPlayer() then
        if attacker:getResets() > 0 then
--            print("Antes: ", math.abs(primaryDamage))
            primaryDamage = math.abs(primaryDamage) + math.floor(math.abs(primaryDamage) * attacker:getDamageResets() / 100)
--            print("Depois: ", primaryDamage)
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
healthChange:register()

local manaChange = CreatureEvent("RESET_Damage___ManaChange")
function manaChange.onManaChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker then
        return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end

    if attacker:isPlayer() then
        if attacker:getResets() > 0 then
            primaryDamage = math.abs(primaryDamage) + math.floor(math.abs(primaryDamage) * attacker:getDamageResets() / 100)
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
manaChange:register()

--local talkaction = TalkAction("!bonusreset")
--function talkaction.onSay(player, words, param)
--    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have ".. player:getDamageResets() .."% more attack!")
--end
--talkaction:groupType("normal")
--talkaction:register()