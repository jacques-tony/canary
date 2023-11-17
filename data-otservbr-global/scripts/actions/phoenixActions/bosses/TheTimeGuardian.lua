local config = {
    boss = {
        name = "The Time Guardian", 
        position = Position(18074, 17273, 15), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18108, 17271, 15), teleport = Position(18076, 17278, 15) },
        { pos = Position(18108, 17272, 15), teleport = Position(18075, 17278, 15) },
        { pos = Position(18108, 17273, 15), teleport = Position(18074, 17278, 15) },
        { pos = Position(18108, 17274, 15), teleport = Position(18073, 17278, 15) },
        { pos = Position(18108, 17275, 15), teleport = Position(18072, 17278, 15) },	
		
    },
    specPos = { 
        from = Position(18066, 17264, 15), 
        to = Position(18085, 17285, 15), 
    },  
    exit = Position(18108, 17279, 15),     
	 
    storage = 376439,         
}     
    
local lever = BossLever(config)      
lever:aid(37732)      
lever:register()                 