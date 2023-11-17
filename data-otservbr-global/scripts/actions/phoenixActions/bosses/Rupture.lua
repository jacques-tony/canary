local config = {
    boss = {
        name = "Rupture", 
        position = Position(18535, 18177, 14),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18509, 18174, 14), teleport = Position(18535, 18184, 14) },
        { pos = Position(18509, 18175, 14), teleport = Position(18535, 18183, 14) },
        { pos = Position(18509, 18176, 14), teleport = Position(18535, 18185, 14) },
        { pos = Position(18509, 18177, 14), teleport = Position(18535, 18186, 14) },
        { pos = Position(18509, 18178, 14), teleport = Position(18535, 18187, 14) },	
		
    },
    specPos = {
        from = Position(18525, 18166, 14), 
        to = Position(18546, 18187, 14), 
    }, 
    exit = Position(18506, 18169, 14),    
	 
    storage = 376410,      
}    
  
local lever = BossLever(config)    
lever:aid(37693)     
lever:register()           