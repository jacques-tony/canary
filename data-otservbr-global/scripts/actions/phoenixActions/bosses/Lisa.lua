local config = {
    boss = {
        name = "Lisa", 
        position = Position(17265, 17762, 8),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17258, 17782, 8), teleport = Position(17263, 17771, 8) },
        { pos = Position(17259, 17782, 8), teleport = Position(17264, 17771, 8) },
        { pos = Position(17260, 17782, 8), teleport = Position(17265, 17771, 8) },
        { pos = Position(17257, 17782, 8), teleport = Position(17266, 17771, 8) },
        { pos = Position(17256, 17782, 8), teleport = Position(17267, 17771, 8) },	
		
    },
    specPos = {
        from = Position(17233, 17741, 8), 
        to = Position(17304, 17784, 8), 
    },  
    exit = Position(17268, 17781, 8),     
	 
    storage = 376414,      
}    
  
local lever = BossLever(config)     
lever:aid(37699)     
lever:register()           