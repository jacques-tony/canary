local config = {
    boss = {
        name = "Ravenous Hunger",
        position = Position(17925, 17367, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17901, 17367, 13), teleport = Position(17925, 17373, 13) },
        { pos = Position(17901, 17368, 13), teleport = Position(17926, 17373, 13) },
        { pos = Position(17901, 17369, 13), teleport = Position(17927, 17373, 13) },
        { pos = Position(17901, 17370, 13), teleport = Position(17924, 17373, 13) },
        { pos = Position(17901, 17371, 13), teleport = Position(17923, 17373, 13) },
    },
    specPos = {
        from = Position(17915, 17358, 13), 
        to = Position(17935, 17377, 13),
    },
    exit = Position(17900, 17361, 13),   
	 
    storage = 376390,     
}   
  
local lever = BossLever(config)   
lever:aid(37673)  
lever:register()        