local config = {
    boss = {
        name = "Gorzindel",
        position = Position(17933, 18162, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17993, 18192, 8), teleport = Position(17933, 18167, 8) },
        { pos = Position(17994, 18192, 8), teleport = Position(17934, 18167, 8) },
        { pos = Position(17995, 18192, 8), teleport = Position(17935, 18167, 8) },
        { pos = Position(17996, 18192, 8), teleport = Position(17932, 18167, 8) },
        { pos = Position(17997, 18192, 8), teleport = Position(17931, 18167, 8) },
    },
    specPos = {
        from = Position(17918, 18146, 8), 
        to = Position(17947, 18175, 8),
    },
    exit = Position(17991, 18187, 8),   
	 
    storage = 376380,     
}   
  
local lever = BossLever(config)  
lever:aid(37663)  
lever:register()   