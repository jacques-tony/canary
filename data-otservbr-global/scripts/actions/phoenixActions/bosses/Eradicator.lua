local config = {
    boss = {
        name = "Eradicator", 
        position = Position(18509, 18210, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18534, 18210, 14), teleport = Position(18507, 18217, 14) },
        { pos = Position(18534, 18211, 14), teleport = Position(18508, 18217, 14) },
        { pos = Position(18534, 18212, 14), teleport = Position(18509, 18217, 14) },
        { pos = Position(18534, 18213, 14), teleport = Position(18510, 18217, 14) },
        { pos = Position(18534, 18214, 14), teleport = Position(18511, 18217, 14) },	
		
    },
    specPos = {
        from = Position(18498, 18197, 14), 
        to = Position(18520, 18220, 14), 
    }, 
    exit = Position(18537, 18218, 14),    
	 
    storage = 376407,      
}    
  
local lever = BossLever(config)    
lever:aid(37690)     
lever:register()           