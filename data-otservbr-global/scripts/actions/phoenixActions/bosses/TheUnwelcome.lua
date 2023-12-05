local config = {
    boss = {
        name = "The Unwelcome", 
        position = Position(17928, 18527, 11), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17956, 18526, 11), teleport = Position(17928, 18533, 11) },
        { pos = Position(17957, 18526, 11), teleport = Position(17928, 18533, 11) },
        { pos = Position(17958, 18526, 11), teleport = Position(17928, 18533, 11) },
        { pos = Position(17959, 18526, 11), teleport = Position(17928, 18533, 11) },
        { pos = Position(17960, 18526, 11), teleport = Position(17928, 18533, 11) },	
		 
    }, 
    specPos = { 
        from = Position(17918, 18518, 11), 
        to = Position(17941, 18538, 11), 
    },  
    exit = Position(17966, 18525, 11),     
	 
    storage = 378020,         
}      
    
local lever = BossLever(config)        
lever:aid(37820)      
lever:register()                    