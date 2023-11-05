local talkactions = TalkAction("!reset")
function talkactions.onSay(player, words, param) 
    if player:getStorageValue(67606) == -1 then
        player:sendCancelMessage("You need to do a mission first to be able to reset.")
        return false
    end

    if player:getResets() >= resetConfig.limitResets then
    player:sendCancelMessage("You have reached the maximum reset limit.")
    return false
    end

    if player:getStorageValue(resetConfig.storage_time) >= os.time() then
        player:sendCancelMessage("Wait ".. string.diff(player:getStorageValue(resetConfig.storage_time) - os.time()) .. " to reset again.")
        return false 
    end
 
    if resetConfig.redskull and player:getSkull() == 4 then
        player:sendCancelMessage("You need to be without red skull to reset.")
    elseif resetConfig.pz and not getTilePzInfo(player:getPosition()) then
        player:sendCancelMessage("You need to be in protection zone to reset.")
    elseif resetConfig.battle and player:getCondition(CONDITION_INFIGHT) then
        player:sendCancelMessage("You need to be without battle to reset.")
    end
   
    if player:getLevel() < player:getResetLevel() then
        player:sendCancelMessage("You need level " .. player:getResetLevel() .. " or more to reset.")
        return false
    end
   
    local oldCap = player:getCapacity()
    player:addReset(1)
    player:removeExperience(getExperienceForLevel(player:getLevel()) - getExperienceForLevel(resetConfig.backToLevel))
    player:setMaxHealth(185)
    player:setMaxMana(90) 
    player:addHealth(185) 
    player:addMana(90)
	player:setCapacity(oldCap)

    player:setAttackSpeed(player:getAttackSpeedResets())
    player:setStorageValue(resetConfig.storage_time, os.time() + resetConfig.time_to_reset)
	
	local conditionsToRemove = {CONDITION_CURSED, CONDITION_DAZZLED, CONDITION_FREEZING, CONDITION_DRUNK, CONDITION_BLEEDING, CONDITION_ENERGY, CONDITION_DROWN, CONDITION_PARALYZE, CONDITION_POISON, CONDITION_SLEEP}
    for _, condition in ipairs(conditionsToRemove) do
        if player:getCondition(condition) then
            player:removeCondition(condition) 
        end
    end

    player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Now you have " .. player:getResets() .. " " .. (player:getResets() == 1 and "reset" or "resets") .. ".")
    return false
end
talkactions:groupType("normal")
talkactions:register() 

local login = CreatureEvent('__setAttackSpeed')
function login.onLogin(player)
    player:setAttackSpeed(player:getAttackSpeedResets())
    return true
end
login:register()

local creatureevent = CreatureEvent("__maxLevelPerReset")
function creatureevent.onAdvance(player, skill, oldlevel, newlevel)
	if skill ~= SKILL_LEVEL then
		return true
	end

	if newlevel >= player:getResetLevel() then
		player:removeExperience(player:getExperience() - getExperienceForLevel(player:getResetLevel()))
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "Voce nao ganhara mais experiencia a partir de agora, voce atingiu o level maximo, por favor reset seu personagem.")
	end
	return true
end
creatureevent:register()