local config = {
    boss = {
        name = "The Duke Of The Depths",
        position = Position(17482, 17716, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17416, 17710, 11), teleport = Position(17481, 17722, 11) },
        { pos = Position(17417, 17710, 11), teleport = Position(17482, 17722, 11) },
        { pos = Position(17418, 17710, 11), teleport = Position(17483, 17722, 11) },
        { pos = Position(17415, 17710, 11), teleport = Position(17480, 17722, 11) },
        { pos = Position(17414, 17710, 11), teleport = Position(17479, 17722, 11) },
    },
    specPos = {
        from = Position(17475, 17708, 11),
        to = Position(17490, 17724, 11),
    },
    exit = Position(17416, 17713, 11),
	
    storage = 376359, 
} 
 
local lever = BossLever(config)
lever:aid(37641)
lever:register()