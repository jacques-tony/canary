local config = {
    boss = {
        name = "Tentugly's Head", 
        position = Position(18069, 18055, 7), 
    },  
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18139, 18264, 6), teleport = Position(18071, 18060, 7) },
        { pos = Position(18140, 18264, 6), teleport = Position(18070, 18060, 7) },
        { pos = Position(18141, 18264, 6), teleport = Position(18069, 18060, 7) },
        { pos = Position(18142, 18264, 6), teleport = Position(18068, 18060, 7) },
        { pos = Position(18143, 18264, 6), teleport = Position(18067, 18060, 7) },		
		 
    }, 
    specPos = { 
        from = Position(17981, 17920, 10), 
        to = Position(18004, 17944, 10), 
    },  
    exit = Position(18146, 18263, 6),     
	 
    storage = 378060,         
}      
    
local lever = BossLever(config)        
lever:aid(37860)      
lever:register()                     