local config = {
    boss = {
        name = "Anomaly", 
        position = Position(18471, 18175, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18445, 18171, 14), teleport = Position(18471, 18183, 14) },
        { pos = Position(18445, 18172, 14), teleport = Position(18472, 18183, 14) },
        { pos = Position(18445, 18173, 14), teleport = Position(18473, 18183, 14) },
        { pos = Position(18445, 18174, 14), teleport = Position(18470, 18183, 14) },
        { pos = Position(18445, 18175, 14), teleport = Position(18469, 18183, 14) },	
		
    },
    specPos = {
        from = Position(18461, 18164, 14), 
        to = Position(18482, 18185, 14), 
    }, 
    exit = Position(18445, 18178, 14),    
	 
    storage = 376405,      
}    
  
local lever = BossLever(config)    
lever:aid(37688)     
lever:register()          