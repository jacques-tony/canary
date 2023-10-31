local config = {
    boss = {
        name = "Brokul",
        position = Position(18309, 17908, 15),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18346, 17934, 15), teleport = Position(18309, 17916, 15) },
        { pos = Position(18347, 17934, 15), teleport = Position(18310, 17916, 15) },
        { pos = Position(18348, 17934, 15), teleport = Position(18311, 17916, 15) },
        { pos = Position(18349, 17934, 15), teleport = Position(18308, 17916, 15) },
        { pos = Position(18350, 17934, 15), teleport = Position(18307, 17916, 15) },
    },
    specPos = {
        from = Position(18298, 17899, 15), 
        to = Position(18320, 17917, 15),
    },
    exit = Position(18373, 18589, 10), 
	
    storage = 376363,   
}  
 
local lever = BossLever(config) 
lever:aid(37645) 
lever:register()   