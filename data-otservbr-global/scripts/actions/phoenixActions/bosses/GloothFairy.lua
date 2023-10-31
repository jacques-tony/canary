local config = {
    boss = {
        name = "Glooth Fairy",
        position = Position(17333, 17901, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17307, 17905, 11), teleport = Position(17333, 17908, 11) },
        { pos = Position(17308, 17905, 11), teleport = Position(17334, 17908, 11) },
        { pos = Position(17309, 17905, 11), teleport = Position(17335, 17908, 11) },
        { pos = Position(17306, 17905, 11), teleport = Position(17332, 17908, 11) },
        { pos = Position(17305, 17905, 11), teleport = Position(17331, 17908, 11) },
    },
    specPos = {
        from = Position(17323, 17891, 11), 
        to = Position(17344, 17912, 11),
    },
    exit = Position(17302, 17904, 11), 
	
    storage = 376368,   
}  
 
local lever = BossLever(config) 
lever:aid(37650)  
lever:register()   