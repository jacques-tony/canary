local config = {
    boss = {
        name = "soul of Dragonking Zyrtarch", 
        position = Position(17251, 17678, 12), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17284, 17674, 12), teleport = Position(17253, 17683, 12) },
        { pos = Position(17284, 17675, 12), teleport = Position(17252, 17683, 12) },
        { pos = Position(17284, 17676, 12), teleport = Position(17251, 17683, 12) },
        { pos = Position(17284, 17677, 12), teleport = Position(17250, 17683, 12) },
        { pos = Position(17284, 17678, 12), teleport = Position(17249, 17683, 12) },	
		
    },
    specPos = {
        from = Position(17242, 17668, 12), 
        to = Position(17261, 17688, 12), 
    },  
    exit = Position(17284, 17681, 12),     
	 
    storage = 376433,        
}     
    
local lever = BossLever(config)      
lever:aid(37726)      
lever:register()                 