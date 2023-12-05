local config = {
    boss = {
        name = "The Brainstealer", 
        position = Position(17603, 18033, 14), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17635, 18031, 14), teleport = Position(17601, 18038, 14) },
        { pos = Position(17635, 18031, 14), teleport = Position(17602, 18038, 14) },
        { pos = Position(17635, 18031, 14), teleport = Position(17603, 18038, 14) },
        { pos = Position(17635, 18031, 14), teleport = Position(17604, 18038, 14) },
        { pos = Position(17635, 18031, 14), teleport = Position(17605, 18038, 14) },	
		 
    }, 
    specPos = { 
        from = Position(17595, 18026, 14), 
        to = Position(17612, 18043, 14), 
    },  
    exit = Position(17643, 18030, 14),     
	 
    storage = 378018,         
}      
    
local lever = BossLever(config)      
lever:aid(37818)      
lever:register()                    