local config = {
    boss = {
        name = "Bullwark", 
        position = Position(17653, 17507, 7), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17651, 17526, 7), teleport = Position(17654, 17516, 7) },
        { pos = Position(17652, 17526, 7), teleport = Position(17653, 17516, 7) },
        { pos = Position(17653, 17526, 7), teleport = Position(17652, 17516, 7) },
        { pos = Position(17634, 18031, 14), teleport = Position(17651, 17516, 7) },
        { pos = Position(17635, 18031, 14), teleport = Position(17650, 17516, 7) },	
		 
    }, 
    specPos = { 
        from = Position(17644, 17496, 7), 
        to = Position(17665, 17522, 7), 
    },  
    exit = Position(17653, 17529, 7),     
	 
    storage = 478448,         
}      
    
local lever = BossLever(config)      
lever:aid(44618)      
lever:register()                    