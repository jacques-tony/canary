local config = {
    boss = {
        name = "Zamulosh",
        position = Position(18158, 17975, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18195, 17959, 11), teleport = Position(18158, 17980, 11) },
        { pos = Position(18195, 17960, 11), teleport = Position(18159, 17980, 11) },
        { pos = Position(18195, 17961, 11), teleport = Position(18160, 17980, 11) },
        { pos = Position(18195, 17962, 11), teleport = Position(18157, 17980, 11) },
        { pos = Position(18195, 17963, 11), teleport = Position(18156, 17980, 11) },
    },
    specPos = {
        from = Position(18148, 17966, 11), 
        to = Position(18169, 17983, 11),
    },
    exit = Position(18195, 17952, 11),   
	 
    storage = 376389,     
}   
  
local lever = BossLever(config)   
lever:aid(37672)  
lever:register()        