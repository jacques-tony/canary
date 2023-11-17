local config = {
    boss = {
        name = "Essence Of Malice", 
        position = Position(17923, 17705, 12),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17920, 17728, 12), teleport = Position(17921, 17712, 12) },
        { pos = Position(17920, 17729, 12), teleport = Position(17922, 17712, 12) },
        { pos = Position(17920, 17730, 12), teleport = Position(17923, 17712, 12) },
        { pos = Position(17920, 17731, 12), teleport = Position(17924, 17712, 12) },
        { pos = Position(17920, 17732, 12), teleport = Position(17925, 17712, 12) },	
		
    },
    specPos = {
        from = Position(17913, 17695, 12), 
        to = Position(17932, 17715, 12), 
    },  
    exit = Position(17920, 17736, 12),     
	 
    storage = 376413,      
}    
  
local lever = BossLever(config)     
lever:aid(37698)     
lever:register()           