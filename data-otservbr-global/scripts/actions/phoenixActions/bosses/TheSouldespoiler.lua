local config = {
    boss = {
        name = "The Souldespoiler", 
        position = Position(18027, 17458, 10), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18024, 17426, 10), teleport = Position(18025, 17465, 10) },
        { pos = Position(18024, 17427, 10), teleport = Position(18026, 17465, 10) },
        { pos = Position(18024, 17428, 10), teleport = Position(18027, 17465, 10) },
        { pos = Position(18024, 17429, 10), teleport = Position(18028, 17465, 10) },
        { pos = Position(18024, 17430, 10), teleport = Position(18029, 17465, 10) },	
		 
    },
    specPos = { 
        from = Position(18017, 17448, 10), 
        to = Position(18037, 17469, 10), 
    },  
    exit = Position(18024, 17432, 10),     
	 
    storage = 378005,         
}     
    
local lever = BossLever(config)      
lever:aid(37805)      
lever:register()                    