local talk = TalkAction("!attackspeed")

function talk.onSay(player, words, param)
	local vocSpeed = player:getVocation():getAttackSpeed()
	local playerSkill = player:getSkillLevel(SKILL_FIST)
	local speed = vocSpeed-playerSkill
		player:popupFYI("Seu AttackSpeed: " .. string.format("%.2f", 1000/speed) .. " ataques por segundo.\nTreine seu Fist Fighting para aumentar a velocidade de ataque!")
	return true
end

talk:separator(" ")
talk:groupType("normal")
talk:register()