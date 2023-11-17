local config = {
    boss = {
        name = "Lloyd", 
        position = Position(17411, 17936, 12), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17371, 17977, 12), teleport = Position(17412, 17943, 12) },
        { pos = Position(17371, 17978, 12), teleport = Position(17413, 17943, 12) },
        { pos = Position(17371, 17979, 12), teleport = Position(17414, 17943, 12) },
        { pos = Position(17371, 17980, 12), teleport = Position(17411, 17943, 12) },
        { pos = Position(17371, 17981, 12), teleport = Position(17410, 17943, 12) },	
		
    },
    specPos = {
        from = Position(17398, 17923, 12), 
        to = Position(17425, 17948, 12), 
    },  
    exit = Position(17371, 17984, 12),     
	 
    storage = 376429,       
}    
    
local lever = BossLever(config)      
lever:aid(37719)      
lever:register()               