local config = {
    boss = {
        name = "Alptramun", 
        position = Position(18393, 17503, 11),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18389, 17474, 10), teleport = Position(18391, 17508, 11) },
        { pos = Position(18389, 17475, 10), teleport = Position(18392, 17508, 11) },
        { pos = Position(18389, 17476, 10), teleport = Position(18393, 17508, 11) },
        { pos = Position(18389, 17477, 10), teleport = Position(18394, 17508, 11) },
        { pos = Position(18389, 17478, 10), teleport = Position(18395, 17508, 11) },	
		
    },
    specPos = {
        from = Position(18384, 17493, 11), 
        to = Position(18403, 17512, 11), 
    },  
    exit = Position(18394, 17475, 10),     
	 
    storage = 376419,       
}    
    
local lever = BossLever(config)     
lever:aid(37704)      
lever:register()             