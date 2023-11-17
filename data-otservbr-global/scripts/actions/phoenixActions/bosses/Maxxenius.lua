local config = {
    boss = {
        name = "Maxxenius", 
        position = Position(18370, 17503, 11),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18367, 17475, 10), teleport = Position(18370, 17507, 11) },
        { pos = Position(18367, 17476, 10), teleport = Position(18369, 17507, 11) },
        { pos = Position(18367, 17477, 10), teleport = Position(18368, 17507, 11) },
        { pos = Position(18367, 17478, 10), teleport = Position(18371, 17507, 11) },
        { pos = Position(18367, 17479, 10), teleport = Position(18372, 17507, 11) },	
		
    },
    specPos = {
        from = Position(18361, 17493, 11), 
        to = Position(18379, 17512, 11), 
    },  
    exit = Position(18372, 17476, 10),     
	 
    storage = 376417,       
}    
   
local lever = BossLever(config)     
lever:aid(37702)     
lever:register()            