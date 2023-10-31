local config = {
    boss = {
        name = "Ghulosh",
        position = Position(18001, 18163, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17993, 18216, 8), teleport = Position(18001, 18170, 8) },
        { pos = Position(17994, 18216, 8), teleport = Position(18002, 18170, 8) },
        { pos = Position(17996, 18216, 8), teleport = Position(18003, 18170, 8) },
        { pos = Position(17997, 18216, 8), teleport = Position(18000, 18170, 8) },
        { pos = Position(17998, 18216, 8), teleport = Position(17999, 18170, 8) },
    },
    specPos = {
        from = Position(17993, 18155, 8), 
        to = Position(18011, 18173, 8),
    },
    exit = Position(17991, 18211, 8),   
	 
    storage = 376379,     
}   
  
local lever = BossLever(config)  
lever:aid(37662)  
lever:register()   