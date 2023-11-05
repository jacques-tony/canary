local config = {
    boss = {
        name = "Goshnar's Megalomania",
        position = Position(17930, 18623, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17896, 18623, 11), teleport = Position(17931, 18629, 11) },
        { pos = Position(17897, 18623, 11), teleport = Position(17932, 18629, 11) },
        { pos = Position(17898, 18623, 11), teleport = Position(17930, 18629, 11) },
        { pos = Position(17899, 18623, 11), teleport = Position(17929, 18629, 11) },
        { pos = Position(17900, 18623, 11), teleport = Position(17928, 18629, 11) },	
    },
    specPos = {
        from = Position(17920, 18614, 11), 
        to = Position(17940, 18632, 11),
    },
    exit = Position(17892, 18622, 11),   
	 
    storage = 376394,     
}   
  
local lever = BossLever(config)   
lever:aid(37677)   
lever:register()        