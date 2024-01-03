local config = {
    boss = {
        name = "The Count Of The Core",
        position = Position(18009, 18233, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17983, 18232, 14), teleport = Position(18007, 18236, 14) },
        { pos = Position(17982, 18232, 14), teleport = Position(18008, 18236, 14) },
        { pos = Position(17981, 18232, 14), teleport = Position(18009, 18236, 14) },
        { pos = Position(17980, 18232, 14), teleport = Position(18010, 18236, 14) },
        { pos = Position(17979, 18232, 14), teleport = Position(18011, 18236, 14) },
    },
    specPos = {
        from = Position(17996, 18226, 14), 
        to = Position(18021, 18240, 14),
    },
    exit = Position(17978, 18235, 14), 
	
    storage = 376361, 
}  
 
local lever = BossLever(config) 
lever:aid(37643) 
lever:register()   