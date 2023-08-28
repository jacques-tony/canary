local effects = {
    {position = Position(17563, 17566, 6), text = 'Welcome to, PHOENIXOT!', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17572, 17565, 6), text = 'RESETS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17574, 17565, 6), text = 'MONSTERS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(17576, 17565, 6), text = 'QUESTS', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(32373, 32236, 7), text = '', effect = CONST_ME_GROUNDSHAKER}, 
    {position = Position(17581, 17565, 6), text = 'BOSSES', effect = CONST_ME_GROUNDSHAKER},
    {position = Position(1114, 1096, 7), text = '', effect = CONST_ME_GROUNDSHAKER},  
    -------
    {position = Position(17569, 17560, 6), text = 'FORGE', effect = CONST_ME_GROUNDSHAKER}, 
    {position = Position(17586, 17560, 6), text = 'CASTLE', effect = CONST_ME_GROUNDSHAKER},  
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