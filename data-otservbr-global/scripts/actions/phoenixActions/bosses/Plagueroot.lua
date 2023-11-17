local config = {
    boss = {
        name = "Plagueroot", 
        position = Position(18321, 17501, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18321, 17474, 10), teleport = Position(18321, 17495, 11) },
        { pos = Position(18321, 17475, 10), teleport = Position(18320, 17495, 11) },
        { pos = Position(18321, 17476, 10), teleport = Position(18319, 17495, 11) },
        { pos = Position(18321, 17477, 10), teleport = Position(18322, 17495, 11) },
        { pos = Position(18321, 17478, 10), teleport = Position(18323, 17495, 11) },

    },
    specPos = {
        from = Position(18312, 17492, 11), 
        to = Position(18329, 17509, 11),
    }, 
    exit = Position(18326, 17475, 10),    
	 
    storage = 376401,      
}    
  
local lever = BossLever(config)    
lever:aid(37684)    
lever:register()        