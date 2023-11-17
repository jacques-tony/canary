local config = {
    boss = {
        name = "Melting Frozen Horror", 
        position = Position(17790, 18037, 8), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17823, 18034, 8), teleport = Position(17792, 18043, 8) },
        { pos = Position(17823, 18035, 8), teleport = Position(17791, 18043, 8) },
        { pos = Position(17823, 18036, 8), teleport = Position(17790, 18043, 8) },
        { pos = Position(17823, 18037, 8), teleport = Position(17789, 18043, 8) },
        { pos = Position(17823, 18038, 8), teleport = Position(17788, 18043, 8) },	
		
    },
    specPos = { 
        from = Position(17781, 18027, 8), 
        to = Position(17801, 18047, 8), 
    },  
    exit = Position(17823, 18042, 8),     
	 
    storage = 376436,        
}     
    
local lever = BossLever(config)      
lever:aid(37729)      
lever:register()                 