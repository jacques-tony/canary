local config = {
    boss = {
        name = "The Duke Of The Depths",
        position = Position(17481, 17715, 11),
    },
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17416, 17710, 11), teleport = Position(17480, 17722, 11) },
        { pos = Position(17415, 17710, 11), teleport = Position(17481, 17722, 11) },
        { pos = Position(17414, 17710, 11), teleport = Position(17482, 17722, 11) },
        { pos = Position(17417, 17710, 11), teleport = Position(17483, 17722, 11) },
        { pos = Position(17418, 17710, 11), teleport = Position(17484, 17722, 11) },
    },
    specPos = {
        from = Position(17476, 17709, 11),
        to = Position(17490, 17724, 11),
    },
    exit = Position(17416, 17716, 11),
	
    storage = GlobalStorage.DangerousDepths.Geodes.WarzoneVI, 
}
 
local lever = BossLever(config)
lever:aid(37635)
lever:register()