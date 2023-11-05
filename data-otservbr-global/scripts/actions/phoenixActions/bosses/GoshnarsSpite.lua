local config = {
    boss = {
        name = "Goshnar's Spite",
        position = Position(17962, 18622, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17994, 18623, 11), teleport = Position(17962, 18627, 11) },
        { pos = Position(17995, 18623, 11), teleport = Position(17963, 18627, 11) },
        { pos = Position(17996, 18623, 11), teleport = Position(17964, 18627, 11) },
        { pos = Position(17997, 18623, 11), teleport = Position(17961, 18627, 11) },
        { pos = Position(17998, 18623, 11), teleport = Position(17960, 18627, 11) },
    },
    specPos = {
        from = Position(17952, 18613, 11), 
        to = Position(17952, 18613, 11),
    },
    exit = Position(17995, 18618, 11),   
	 
    storage = 376384,     
}   
  
local lever = BossLever(config)   
lever:aid(37667)  
lever:register()     