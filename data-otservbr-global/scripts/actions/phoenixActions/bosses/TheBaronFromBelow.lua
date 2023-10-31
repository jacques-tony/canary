local config = {
    boss = {
        name = "The Baron From Below",
        position = Position(18009, 18232, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17981, 18232, 14), teleport = Position(18008, 18236, 14) },
        { pos = Position(17982, 18232, 14), teleport = Position(18009, 18236, 14) },
        { pos = Position(17983, 18232, 14), teleport = Position(18010, 18236, 14) },
        { pos = Position(17980, 18232, 14), teleport = Position(18007, 18236, 14) },
        { pos = Position(17979, 18232, 14), teleport = Position(18006, 18236, 14) },
    },
    specPos = {
        from = Position(17997, 18225, 14), 
        to = Position(18020, 18240, 14),
    },
    exit = Position(18065, 17820, 14), 
	
    storage = 376360, 
}  
 
local lever = BossLever(config) 
lever:aid(37642)
lever:register()   