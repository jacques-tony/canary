local talk = TalkAction("!attackspeed")

function talk.onSay(player, words, param)
	local vocSpeed = player:getVocation():getAttackSpeed()
	local playerSkill = player:getSkillLevel(SKILL_FIST)
	local speed = vocSpeed-playerSkill
		player:popupFYI("Your Attack Speed: " .. string.format("%.2f", 1000/speed) .. " attacks per second. \nTrain your Fist Fighting to increase attack speed!")
	return true
end

talk:separator(" ")
talk:groupType("normal")
talk:register()