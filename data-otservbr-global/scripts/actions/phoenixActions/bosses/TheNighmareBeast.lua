local config = {
    boss = {
        name = "The Nightmare Beast", 
        position = Position(18321, 17498, 12),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18327, 17523, 12), teleport = Position(18321, 17504, 12) },
        { pos = Position(18326, 17523, 12), teleport = Position(18322, 17504, 12) },
        { pos = Position(18325, 17523, 12), teleport = Position(18323, 17504, 12) },
        { pos = Position(18324, 17523, 12), teleport = Position(18320, 17504, 12) },
        { pos = Position(18323, 17523, 12), teleport = Position(18319, 17504, 12) },

        { pos = Position(18327, 17524, 12), teleport = Position(18321, 17505, 12) },
        { pos = Position(18326, 17524, 12), teleport = Position(18322, 17505, 12) },
        { pos = Position(18325, 17524, 12), teleport = Position(18323, 17505, 12) },
        { pos = Position(18324, 17524, 12), teleport = Position(18320, 17505, 12) },
        { pos = Position(18323, 17524, 12), teleport = Position(18319, 17505, 12) },	

    },
    specPos = {
        from = Position(18307, 17488, 12), 
        to = Position(18334, 17509, 12),
    }, 
    exit = Position(18324, 17528, 12),    
	 
    storage = 376403,      
}    
  
local lever = BossLever(config)    
lever:aid(37686)    
lever:register()         