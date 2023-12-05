local config = {
    boss = {
        name = "The Armored Voidborn", 
        position = Position(18139, 17607, 8), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18167, 17608, 8), teleport = Position(18137, 17614, 8) },
        { pos = Position(18167, 17609, 8), teleport = Position(18138, 17614, 8) },
        { pos = Position(18167, 17610, 8), teleport = Position(18139, 17614, 8) },
        { pos = Position(18167, 17611, 8), teleport = Position(18140, 17614, 8) },
        { pos = Position(18167, 17612, 8), teleport = Position(18141, 17614, 8) },	
		
    },
    specPos = { 
        from = Position(18129, 17598, 8), 
        to = Position(18150, 17619, 8), 
    },  
    exit = Position(18167, 17614, 8),     
	 
    storage = 378001,         
}     
    
local lever = BossLever(config)      
lever:aid(37801)      
lever:register()                  