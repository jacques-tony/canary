local talkactions = TalkAction("!reset")
function talkactions.onSay(player, words, param) 
    if player:getStorageValue(resetConfig.storage_mission_first) == -1 then
        player:sendCancelMessage("Now you need to do a mission first to be able to reset.")
        return false
    end

    if player:getStorageValue(resetConfig.storage_acess_to_reset) == -1 then
        player:sendCancelMessage("Now you need access that you only have in the store.")
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

    if not player:removeMoneyBank(player:getResetsPrice()) then
		player:sendCancelMessage("You do not have enough money.")
		return false
	end

    player:restarting()
    return false
end
talkactions:groupType("normal")
talkactions:register()

local talkactions = TalkAction("!limit")
function talkactions.onSay(player, words, param) 
    if (param == "off") then
        if player:getStorageValue(resetConfig.storage_state_message) == -1 then
            player:setStorageValue(resetConfig.storage_state_message, 1)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Message blocked.")
        else
            player:sendCancelMessage("You already been deactivated.")
        end
    elseif (param == "on") then
        if player:getStorageValue(resetConfig.storage_state_message) == 1 then
            player:setStorageValue(resetConfig.storage_state_message, -1)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Message unlocked.")
        else
            player:sendCancelMessage("You already been activated.")
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Use: !limit on / off")
    end
    return false
end
talkactions:groupType("normal")
talkactions:separator(" ")
talkactions:register()

local action = Action()
function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(resetConfig.storage_acess_to_reset) == -1 then
        player:setStorageValue(resetConfig.storage_acess_to_reset, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have been granted access to the !reset command.")
        item:remove()
    else
        player:sendCancelMessage("You already have access!")
    end
	return true
end
action:id(resetConfig.item_acess_to_reset)
action:register()

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