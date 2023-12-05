local config = {
    boss = {
        name = "Doctor Marrow", 
        position = Position(17053, 17949, 12), 
    },  
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17028, 17942, 12), teleport = Position(17055, 17952, 12) },
        { pos = Position(17027, 17942, 12), teleport = Position(17054, 17952, 12) },
        { pos = Position(17026, 17942, 12), teleport = Position(17053, 17952, 12) },
        { pos = Position(17025, 17942, 12), teleport = Position(17052, 17952, 12) },
        { pos = Position(17024, 17942, 12), teleport = Position(17051, 17952, 12) },	
		 
    }, 
    specPos = { 
        from = Position(17043, 17941, 12), 
        to = Position(17063, 17958, 12), 
    },  
    exit = Position(17021, 17942, 12),     
	 
    storage = 378022,         
}      
    
local lever = BossLever(config)        
lever:aid(37822)      
lever:register()                    