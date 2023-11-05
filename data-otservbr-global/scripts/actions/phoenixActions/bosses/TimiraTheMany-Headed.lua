local config = {
    boss = {
        name = "Timira The Many-Headed",
        position = Position(17031, 18061, 9),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17025, 18060, 8), teleport = Position(17034, 18066, 9) },
        { pos = Position(17024, 18060, 8), teleport = Position(17033, 18066, 9) },
        { pos = Position(17023, 18060, 8), teleport = Position(17032, 18066, 9) },
        { pos = Position(17022, 18060, 8), teleport = Position(17031, 18066, 9) },
        { pos = Position(17021, 18060, 8), teleport = Position(17030, 18066, 9) },	
    },
    specPos = {
        from = Position(17023, 18055, 9), 
        to = Position(17041, 18070, 9),
    },
    exit = Position(17018, 18058, 8),   
	 
    storage = 376395,     
}   
  
local lever = BossLever(config)   
lever:aid(37678)   
lever:register()        