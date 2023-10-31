local config = {
    boss = {
        name = "Sir Baeloc",
        position = Position(18211, 18084, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18211, 18057, 13), teleport = Position(18211, 18091, 13) },
        { pos = Position(18212, 18057, 13), teleport = Position(18212, 18091, 13) },
        { pos = Position(18213, 18057, 13), teleport = Position(18213, 18091, 13) },
        { pos = Position(18214, 18057, 13), teleport = Position(18210, 18091, 13) },
        { pos = Position(18215, 18057, 13), teleport = Position(18209, 18091, 13) },
    },
    specPos = {
        from = Position(18200, 18070, 13), 
        to = Position(18223, 18095, 13),
    },
    exit = Position(18213, 18048, 13),  
	
    storage = 376370,    
}  
 
local lever = BossLever(config) 
lever:aid(37652)  
lever:register()   