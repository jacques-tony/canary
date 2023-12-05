local config = {
    boss = {
        name = "The Ravager", 
        position = Position(17992, 17931, 10), 
    },  
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17990, 17900, 10), teleport = Position(17990, 17936, 10) },
        { pos = Position(17991, 17900, 10), teleport = Position(17991, 17936, 10) },
        { pos = Position(17992, 17900, 10), teleport = Position(17992, 17936, 10) },
        { pos = Position(17993, 17900, 10), teleport = Position(17993, 17936, 10) },
		 
    }, 
    specPos = { 
        from = Position(17981, 17920, 10), 
        to = Position(18004, 17944, 10), 
    },  
    exit = Position(17988, 17902, 10),     
	 
    storage = 378030,         
}      
    
local lever = BossLever(config)        
lever:aid(37830)      
lever:register()                     