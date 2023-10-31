local config = {
    boss = {
        name = "Earl Osam",
        position = Position(18275, 18082, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18303, 18088, 13), teleport = Position(18275, 18088, 13) },
        { pos = Position(18304, 18088, 13), teleport = Position(18276, 18088, 13) },
        { pos = Position(18305, 18088, 13), teleport = Position(18277, 18088, 13) },
        { pos = Position(18306, 18088, 13), teleport = Position(18274, 18088, 13) },
        { pos = Position(18307, 18088, 13), teleport = Position(18273, 18088, 13) },
    },
    specPos = {
        from = Position(18266, 18073, 13), 
        to = Position(18285, 18091, 13),
    },
    exit = Position(18304, 18079, 13),   
	 
    storage = 376378,     
}   
  
local lever = BossLever(config)  
lever:aid(37661)  
lever:register()   