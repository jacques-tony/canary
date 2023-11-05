local config = {
    boss = {
        name = "Lord Azaram",
        position = Position(18211, 18116, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18209, 18137, 13), teleport = Position(18211, 18123, 13) },
        { pos = Position(18210, 18137, 13), teleport = Position(18212, 18123, 13) },
        { pos = Position(18211, 18137, 13), teleport = Position(18213, 18123, 13) },
        { pos = Position(18212, 18137, 13), teleport = Position(18210, 18123, 13) },
        { pos = Position(18213, 18137, 13), teleport = Position(18209, 18123, 13) },
    },
    specPos = {
        from = Position(18201, 18107, 13), 
        to = Position(18222, 18127, 13),
    },
    exit = Position(18205, 18142, 13),   
	 
    storage = 376386,     
}   
  
local lever = BossLever(config)   
lever:aid(37669)  
lever:register()     