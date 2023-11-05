local config = {
    boss = {
        name = "World Devourer", 
        position = Position(18471, 18273, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18470, 18300, 14), teleport = Position(18473, 18282, 14) },
        { pos = Position(18470, 18301, 14), teleport = Position(18472, 18282, 14) },
        { pos = Position(18470, 18302, 14), teleport = Position(18471, 18282, 14) },
        { pos = Position(18470, 18303, 14), teleport = Position(18470, 18282, 14) },
        { pos = Position(18470, 18304, 14), teleport = Position(18469, 18282, 14) },
		
        { pos = Position(18472, 18300, 14), teleport = Position(18469, 18283, 14) },
        { pos = Position(18472, 18301, 14), teleport = Position(18470, 18283, 14) },
        { pos = Position(18472, 18302, 14), teleport = Position(18471, 18283, 14) },
        { pos = Position(18472, 18303, 14), teleport = Position(18472, 18283, 14) },
        { pos = Position(18472, 18304, 14), teleport = Position(18473, 18283, 14) },

        { pos = Position(18473, 18300, 14), teleport = Position(18469, 18281, 14) },
        { pos = Position(18473, 18300, 14), teleport = Position(18470, 18281, 14) },
        { pos = Position(18473, 18300, 14), teleport = Position(18471, 18281, 14) },
        { pos = Position(18473, 18300, 14), teleport = Position(18472, 18281, 14) },
        { pos = Position(18473, 18300, 14), teleport = Position(18473, 18281, 14) },		

		
	
    },
    specPos = {
        from = Position(18460, 18262, 14), 
        to = Position(18483, 18286, 14),
    },
    exit = Position(18472, 18307, 14),    
	 
    storage = 376400,      
}    
  
local lever = BossLever(config)   
lever:aid(37683)    
lever:register()        