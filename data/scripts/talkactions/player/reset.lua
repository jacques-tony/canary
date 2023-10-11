local talkactions = TalkAction("!reset")
function talkactions.onSay(player, words, param) 
    if player:getStorageValue(67606) == -1 then
        player:sendCancelMessage("You need to do a mission first to be able to reset.")
        return false
    end
-- player:addReset(1) 
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
   
    local oldCap = player:getCapacity() -- essa linha mantém o cap após reset.
    player:addReset(1)
    player:removeExperience(getExperienceForLevel(player:getLevel()) - getExperienceForLevel(resetConfig.backToLevel))
    player:setMaxHealth(player:getMaxHealth())
    player:setMaxMana(player:getMaxMana()) 
    player:addHealth(player:getHealth())
    player:addMana(player:getMana())
	player:setCapacity(oldCap) -- essa linha mantém o cap após reset.
    player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_RED)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Now you have " .. player:getResets() .. " " .. (player:getResets() == 1 and "reset" or "resets") .. ".")
    return false
end

talkactions:groupType("normal")
talkactions:register() 

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