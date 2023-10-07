local effects = {
    {position = Position(17563, 17566, 6), text = 'Welcome to, PHOENIX OT!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17572, 17564, 6), text = 'RESETS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17574, 17564, 6), text = 'MONSTERS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17576, 17564, 6), text = 'QUESTS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17579, 17564, 6), text = 'TRAINER', effect = CONST_ME_GROUNDSHAKER}, 
    {position = Position(17581, 17564, 6), text = 'BOSSES', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17583, 17564, 6), text = 'INVASION', effect = CONST_ME_GROUNDSHAKER},  
    ------- QUESTS
    {position = Position(17548, 17818, 11), text = 'USE!', effect = CONST_ME_GROUNDSHAKER}, 	
   -------	
    {position = Position(17569, 17560, 6), text = 'FORGE!', effect = CONST_ME_GROUNDSHAKER}, 
    {position = Position(17586, 17560, 6), text = 'CASTLE!', effect = CONST_ME_GROUNDSHAKER}, 
    {position = Position(17564, 17560, 6), text = 'CRAFT!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17597, 17555, 6), text = 'MINING!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17574, 17575, 6), text = 'DEPOT!', effect = CONST_ME_GROUNDSHAKER},
    ------- ILHA INICIAL
    {position = Position(17645, 17694, 5), text = 'Welcome to, PHOENIX OT!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17635, 17690, 7), text = 'GO HUNTING!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17631, 17694, 7), text = 'SELL LOOT!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17635, 17686, 7), text = '!EXERCISE', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17634, 17692, 7), text = '!PROMOTION', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17636, 17692, 7), text = '!TOOLS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17625, 17697, 6), text = 'DRUID', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17622, 17697, 6), text = 'SORCERER', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17625, 17703, 6), text = 'PALADIN', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17629, 17704, 6), text = 'KNIGHT', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17616, 17698, 6), text = 'GO CITY!', effect = CONST_ME_GROUNDSHAKER},

}

local animatedText = GlobalEvent("AnimatedText") 
function animatedText.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

animatedText:interval(4550)
animatedText:register()