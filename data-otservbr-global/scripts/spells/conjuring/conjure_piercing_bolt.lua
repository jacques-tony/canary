local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 7363, 5, CONST_ME_MAGIC_BLUE)
end

spell:name("Conjure Piercing Bolt")
spell:words("exevo con grav")
spell:group("support")
spell:vocation("paladin;true", "royal paladin;true","glorious paladin;true","supreme glorious;true")
spell:id(109)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(33)
spell:mana(180)
spell:soul(3)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:isPremium(false)
spell:needLearn(false)
spell:register()
