local config = {
    boss = {
        name = "The Scourge Of Oblivion", 
        position = Position(18084, 18163, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18034, 18168, 8), teleport = Position(18086, 18173, 8) },
        { pos = Position(18034, 18169, 8), teleport = Position(18085, 18173, 8) },
        { pos = Position(18034, 18170, 8), teleport = Position(18084, 18173, 8) },
        { pos = Position(18034, 18171, 8), teleport = Position(18083, 18173, 8) },
        { pos = Position(18034, 18172, 8), teleport = Position(18082, 18173, 8) },
		
        { pos = Position(18035, 18168, 8), teleport = Position(18086, 18172, 8) },
        { pos = Position(18035, 18169, 8), teleport = Position(18085, 18172, 8) },
        { pos = Position(18035, 18170, 8), teleport = Position(18084, 18172, 8) },
        { pos = Position(18035, 18171, 8), teleport = Position(18083, 18172, 8) },
        { pos = Position(18035, 18172, 8), teleport = Position(18082, 18172, 8) },		
		
    },
    specPos = {
        from = Position(18070, 18149, 8), 
        to = Position(18070, 18149, 8), 
    }, 
    exit = Position(18031, 18174, 8),    
	 
    storage = 376404,      
}    
  
local lever = BossLever(config)    
lever:aid(37687)    
lever:register()          