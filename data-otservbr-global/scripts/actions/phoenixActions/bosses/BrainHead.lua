local config = {
    boss = {
        name = "Brain Head", 
        position = Position(17943, 18352, 13), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17943, 18334, 13), teleport = Position(17942, 18360, 13) },
        { pos = Position(17944, 18334, 13), teleport = Position(17943, 18360, 13) },
        { pos = Position(17945, 18334, 13), teleport = Position(17944, 18360, 13) },
        { pos = Position(17946, 18334, 13), teleport = Position(17945, 18360, 13) },
        { pos = Position(17947, 18334, 13), teleport = Position(17946, 18360, 13) },	
		
    },
    specPos = {
        from = Position(17930, 18341, 13), 
        to = Position(17956, 18364, 13), 
    },  
    exit = Position(17945, 18337, 13),     
	 
    storage = 376423,       
}    
    
local lever = BossLever(config)     
lever:aid(37711)      
lever:register()             