local config = {
    boss = {
        name = "Izcandar The Banished", 
        position = Position(18417, 17503, 11), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18414, 17474, 10), teleport = Position(18415, 17509, 11) },
        { pos = Position(18414, 17475, 10), teleport = Position(18416, 17509, 11) },
        { pos = Position(18414, 17476, 10), teleport = Position(18417, 17509, 11) },
        { pos = Position(18414, 17477, 10), teleport = Position(18418, 17509, 11) },
        { pos = Position(18414, 17478, 10), teleport = Position(18419, 17509, 11) },	
		
    },
    specPos = {
        from = Position(18407, 17493, 11), 
        to = Position(18427, 17512, 11), 
    },  
    exit = Position(18419, 17475, 10),     
	 
    storage = 376420,       
}    
    
local lever = BossLever(config)     
lever:aid(37707)      
lever:register()             