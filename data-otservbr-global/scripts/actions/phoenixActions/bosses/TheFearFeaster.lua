local config = {
    boss = {
        name = "The Fear Feaster",
        position = Position(17932, 18458, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17954, 18460, 11), teleport = Position(17934, 18463, 11) },
        { pos = Position(17954, 18460, 11), teleport = Position(17933, 18463, 11) },
        { pos = Position(17954, 18460, 11), teleport = Position(17932, 18463, 11) },
        { pos = Position(17954, 18460, 11), teleport = Position(17931, 18463, 11) },
        { pos = Position(17954, 18460, 11), teleport = Position(17930, 18463, 11) },	
	
    },
    specPos = {
        from = Position(17924, 18451, 11), 
        to = Position(17939, 18466, 11),
    },
    exit = Position(17963, 18459, 11),    
	 
    storage = 376399,      
}    
  
local lever = BossLever(config)   
lever:aid(37682)    
lever:register()        