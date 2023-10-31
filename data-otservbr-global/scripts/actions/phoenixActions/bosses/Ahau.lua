local config = {
    boss = {
        name = "Ahau",
        position = Position(18345, 18571, 10),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18374, 18586, 10), teleport = Position(18345, 18575, 10) },
        { pos = Position(18373, 18586, 10), teleport = Position(18346, 18575, 10) },
        { pos = Position(18372, 18586, 10), teleport = Position(18347, 18575, 10) },
        { pos = Position(18371, 18586, 10), teleport = Position(18344, 18575, 10) },
        { pos = Position(18370, 18586, 10), teleport = Position(18343, 18575, 10) },
    },
    specPos = {
        from = Position(18336, 18564, 10), 
        to = Position(18355, 18577, 10),
    },
    exit = Position(18373, 18589, 10), 
	
    storage = 376362, 
}  
 
local lever = BossLever(config) 
lever:aid(37644) 
lever:register()   