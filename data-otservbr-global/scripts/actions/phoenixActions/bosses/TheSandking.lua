local config = {
    boss = {
        name = "The Sandking", 
        position = Position(18065, 17823, 9), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18040, 17821, 9), teleport = Position(18062, 17827, 9) },
        { pos = Position(18040, 17822, 9), teleport = Position(18063, 17827, 9) },
        { pos = Position(18040, 17823, 9), teleport = Position(18064, 17827, 9) },
        { pos = Position(18040, 17824, 9), teleport = Position(18065, 17827, 9) },
        { pos = Position(18040, 17825, 9), teleport = Position(18066, 17827, 9) },	
		
    },
    specPos = { 
        from = Position(18055, 17812, 9), 
        to = Position(18076, 17835, 9), 
    },  
    exit = Position(18011, 17826, 9),     
	 
    storage = 378000,         
}     
    
local lever = BossLever(config)      
lever:aid(37800)      
lever:register()                  