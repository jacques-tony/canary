local config = {
    boss = {
        name = "The Primal Menace",
        position = Position(16939, 17577, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(16929, 17571, 7), teleport = Position(16937, 17584, 8) },
        { pos = Position(16930, 17571, 7), teleport = Position(16938, 17584, 8) },
        { pos = Position(16931, 17571, 7), teleport = Position(16939, 17584, 8) },
        { pos = Position(16932, 17571, 7), teleport = Position(16940, 17584, 8) },
        { pos = Position(16933, 17571, 7), teleport = Position(16941, 17584, 8) },	
	
    },
    specPos = {
        from = Position(16928, 17568, 8), 
        to = Position(116949, 17586, 8),
    },
    exit = Position(16938, 17567, 7),    
	 
    storage = 376398,      
}   
  
local lever = BossLever(config)   
lever:aid(37681)    
lever:register()        