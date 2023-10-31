local config = {
    boss = {
        name = "Goshnar's Cruelty",
        position = Position(18192, 18738, 7),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18191, 18726, 6), teleport = Position(18192, 18745, 7) },
        { pos = Position(18192, 18726, 6), teleport = Position(18193, 18745, 7) },
        { pos = Position(18193, 18726, 6), teleport = Position(18194, 18745, 7) },
        { pos = Position(18194, 18726, 6), teleport = Position(18191, 18745, 7) },
        { pos = Position(18195, 18726, 6), teleport = Position(18190, 18745, 7) },
    },
    specPos = {
        from = Position(18183, 18728, 7), 
        to = Position(18203, 18747, 7),
    },
    exit = Position(18193, 18737, 6),   
	 
    storage = 376381,     
}   
  
local lever = BossLever(config)  
lever:aid(37664)  
lever:register()    