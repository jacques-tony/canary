local config = {
    boss = {
        name = "Tarbaz",
        position = Position(18008, 18055, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17967, 18060, 14), teleport = Position(18008, 18062, 14) },
        { pos = Position(17967, 18061, 14), teleport = Position(18009, 18062, 14) },
        { pos = Position(17967, 18062, 14), teleport = Position(18010, 18062, 14) },
        { pos = Position(17967, 18063, 14), teleport = Position(18007, 18062, 14) },
        { pos = Position(17967, 18064, 14), teleport = Position(18006, 18062, 14) },
    },
    specPos = {
        from = Position(17997, 18045, 14), 
        to = Position(18020, 18066, 14),
    },
    exit = Position(17968, 18049, 14),   
	 
    storage = 376376,     
}   
 
local lever = BossLever(config)  
lever:aid(37658)  
lever:register()   