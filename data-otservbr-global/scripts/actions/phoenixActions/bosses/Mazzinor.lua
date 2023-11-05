local config = {
    boss = {
        name = "Mazzinor",
        position = Position(17970, 18163, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17967, 18216, 8), teleport = Position(17970, 18169, 8) },
        { pos = Position(17968, 18216, 8), teleport = Position(17971, 18169, 8) },
        { pos = Position(17969, 18216, 8), teleport = Position(17972, 18169, 8) },
        { pos = Position(17970, 18216, 8), teleport = Position(17969, 18169, 8) },
        { pos = Position(17971, 18216, 8), teleport = Position(17968, 18169, 8) },
    },
    specPos = {
        from = Position(17960, 18155, 8), 
        to = Position(17980, 18172, 8),
    },
    exit = Position(17965, 18211, 8),   
	 
    storage = 376388,     
}   
  
local lever = BossLever(config)   
lever:aid(37671)  
lever:register()       