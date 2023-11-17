local config = {
    boss = {
        name = "Malofur Mangrinder", 
        position = Position(18345, 17501, 11),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18343, 17473, 10), teleport = Position(18342, 17508, 11) },
        { pos = Position(18343, 17474, 10), teleport = Position(18343, 17508, 11) },
        { pos = Position(18343, 17475, 10), teleport = Position(18344, 17508, 11) },
        { pos = Position(18343, 17476, 10), teleport = Position(18345, 17508, 11) },
        { pos = Position(18343, 17477, 10), teleport = Position(18346, 17508, 11) },	
		
    },
    specPos = {
        from = Position(18336, 17492, 11), 
        to = Position(18336, 17492, 11), 
    },  
    exit = Position(18348, 17474, 10),     
	 
    storage = 376416,      
}    
  
local lever = BossLever(config)     
lever:aid(37701)     
lever:register()            