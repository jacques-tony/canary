local config = {
    boss = {
        name = "Razzagorn", 
        position = Position(18310, 18044, 13), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18272, 18032, 13), teleport = Position(18310, 18052, 13) },
        { pos = Position(18273, 18032, 13), teleport = Position(18309, 18052, 13) },
        { pos = Position(18274, 18032, 13), teleport = Position(18308, 18052, 13) },
        { pos = Position(18275, 18032, 13), teleport = Position(18311, 18052, 13) },
        { pos = Position(18276, 18032, 13), teleport = Position(18312, 18052, 13) },	
		
    },
    specPos = {
        from = Position(18298, 18030, 13), 
        to = Position(18323, 18055, 13), 
    },  
    exit = Position(18283, 18031, 13),     
	 
    storage = 376425,       
}    
    
local lever = BossLever(config)      
lever:aid(37713)      
lever:register()             