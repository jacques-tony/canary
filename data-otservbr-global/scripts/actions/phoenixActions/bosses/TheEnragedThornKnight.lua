local config = {
    boss = {
        name = "The Enraged Thorn Knight", 
        position = Position(17270, 17984, 12), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17303, 17981, 12), teleport = Position(17270, 17990, 12) },
        { pos = Position(17303, 17982, 12), teleport = Position(17271, 17990, 12) },
        { pos = Position(17303, 17983, 12), teleport = Position(17272, 17990, 12) },
        { pos = Position(17303, 17984, 12), teleport = Position(17269, 17990, 12) },
        { pos = Position(17303, 17985, 12), teleport = Position(17268, 17990, 12) },	
		
    },
    specPos = {
        from = Position(17260, 17974, 12), 
        to = Position(17281, 17995, 12), 
    },  
    exit = Position(17371, 17984, 12),     
	 
    storage = 376431,       
}    
    
local lever = BossLever(config)      
lever:aid(37724)      
lever:register()                