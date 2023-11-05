local config = {
    boss = {
        name = "abyssador",
        position = Position(18190, 17941, 15),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18176, 17909, 15), teleport = Position(18190, 17950, 15) },
        { pos = Position(18175, 17909, 15), teleport = Position(18189, 17950, 15) },
        { pos = Position(18174, 17909, 15), teleport = Position(18188, 17950, 15) },
        { pos = Position(18177, 17909, 15), teleport = Position(18191, 17950, 15) },
        { pos = Position(18178, 17909, 15), teleport = Position(18192, 17950, 15) },
    },
    specPos = {
        from = Position(18180, 17930, 15),
        to = Position(18199, 17954, 15),
    },
    exit = Position(18182, 17913, 15),
	 
    storage = 376353, 
} 
 
local lever = BossLever(config)
lever:aid(37636)
lever:register()