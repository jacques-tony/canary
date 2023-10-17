local config = {
    boss = {
        name = "Deathstrike",
        position = Position(17926, 17619, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17915, 17556, 13), teleport = Position(17924, 17631, 13) },
        { pos = Position(17914, 17556, 13), teleport = Position(17923, 17631, 13) },
        { pos = Position(17913, 17556, 13), teleport = Position(17922, 17631, 13) },
        { pos = Position(17916, 17556, 13), teleport = Position(17925, 17631, 13) },
        { pos = Position(17917, 17556, 13), teleport = Position(17926, 17631, 13) },
    },
    specPos = {
        from = Position(17907, 17601, 13),
        to = Position(17942, 17636, 13),
    },
    exit = Position(17916, 17563, 13),
	
    storage = 376352, 
}
 
local lever = BossLever(config)
lever:aid(37635)
lever:register()