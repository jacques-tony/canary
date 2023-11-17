local config = {
    boss = {
        name = "Lady Tenebris", 
        position = Position(18178, 17234, 15), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18168, 17258, 15), teleport = Position(18180, 17240, 15) },
        { pos = Position(18168, 17259, 15), teleport = Position(18179, 17240, 15) },
        { pos = Position(18168, 17260, 15), teleport = Position(18178, 17240, 15) },
        { pos = Position(18168, 17261, 15), teleport = Position(18177, 17240, 15) },
        { pos = Position(18168, 17262, 15), teleport = Position(18176, 17240, 15) },	
		
    },
    specPos = {
        from = Position(18169, 17224, 15), 
        to = Position(18189, 17244, 15), 
    },  
    exit = Position(18168, 17265, 15),     
	 
    storage = 376427,       
}    
    
local lever = BossLever(config)      
lever:aid(37718)      
lever:register()              