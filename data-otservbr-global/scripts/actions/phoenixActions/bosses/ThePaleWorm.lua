local config = {
    boss = {
        name = "The Pale Worm",
        position = Position(18026, 18494, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17992, 18493, 11), teleport = Position(18026, 18500, 11) },
        { pos = Position(17993, 18493, 11), teleport = Position(18027, 18500, 11) },
        { pos = Position(17993, 18494, 11), teleport = Position(18028, 18500, 11) },
        { pos = Position(17993, 18492, 11), teleport = Position(18029, 18500, 11) },
        { pos = Position(17994, 18492, 11), teleport = Position(18030, 18500, 11) },
		
        { pos = Position(17994, 18493, 11), teleport = Position(18024, 18500, 11) },
        { pos = Position(17994, 18494, 11), teleport = Position(18023, 18500, 11) },
        { pos = Position(17995, 18494, 11), teleport = Position(18022, 18500, 11) },
        { pos = Position(17995, 18493, 11), teleport = Position(18021, 18500, 11) },
        { pos = Position(17995, 18492, 11), teleport = Position(18020, 18500, 11) },		
    },
    specPos = {
        from = Position(18014, 18484, 11), 
        to = Position(18038, 18505, 11),
    },
    exit = Position(18000, 18492, 11),   
	 
    storage = 376391,     
}   
  
local lever = BossLever(config)   
lever:aid(37674)  
lever:register()        