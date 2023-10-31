local config = {
    boss = {
        name = "Grand Master Oberon",
        position = Position(18176, 17736, 9),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18176, 17763, 9), teleport = Position(18176, 17741, 9) },
        { pos = Position(18175, 17763, 9), teleport = Position(18176, 17740, 9) },
        { pos = Position(18174, 17763, 9), teleport = Position(18176, 17739, 9) },
        { pos = Position(18177, 17763, 9), teleport = Position(18176, 17742, 9) },
        { pos = Position(18178, 17763, 9), teleport = Position(18176, 177443, 9) },
    },
    specPos = {
        from = Position(18166, 17730, 9),
        to = Position(18186, 17746, 9),
    },
    exit = Position(18176, 17765, 9),
	
    storage = 376358, 
} 
 
local lever = BossLever(config)
lever:aid(37640)
lever:register()