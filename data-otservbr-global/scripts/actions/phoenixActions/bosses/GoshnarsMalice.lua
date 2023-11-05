local config = {
    boss = {
        name = "Goshnar's Malice",
        position = Position(17929, 18588, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17899, 18588, 11), teleport = Position(17929, 18594, 11) },
        { pos = Position(17900, 18588, 11), teleport = Position(17929, 18595, 11) },
        { pos = Position(17901, 18588, 11), teleport = Position(17929, 18596, 11) },
        { pos = Position(17902, 18588, 11), teleport = Position(17929, 18593, 11) },
        { pos = Position(17903, 18588, 11), teleport = Position(17929, 18592, 11) },
    },
    specPos = {
        from = Position(17919, 18579, 11), 
        to = Position(17940, 18597, 11),
    },
    exit = Position(17895, 18587, 11),   
	 
    storage = 376383,     
}   
  
local lever = BossLever(config)   
lever:aid(37666)  
lever:register()     