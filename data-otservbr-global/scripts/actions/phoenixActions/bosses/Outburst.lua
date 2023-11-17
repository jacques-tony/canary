local config = {
    boss = {
        name = "Outburst", 
        position = Position(18435, 18210, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18407, 18210, 14), teleport = Position(18436, 18219, 14) },
        { pos = Position(18407, 18211, 14), teleport = Position(18435, 18219, 14) },
        { pos = Position(18407, 18212, 14), teleport = Position(18434, 18219, 14) },
        { pos = Position(18407, 18213, 14), teleport = Position(18433, 18219, 14) },
        { pos = Position(18407, 18214, 14), teleport = Position(18432, 18219, 14) },	
		
    },
    specPos = {
        from = Position(18423, 18199, 14), 
        to = Position(18445, 18222, 14), 
    }, 
    exit = Position(18407, 18216, 14),    
	 
    storage = 376408,      
}    
  
local lever = BossLever(config)    
lever:aid(37691)     
lever:register()           