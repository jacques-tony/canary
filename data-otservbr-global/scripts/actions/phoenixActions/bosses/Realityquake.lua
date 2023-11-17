local config = {
    boss = {
        name = "Realityquake", 
        position = Position(18409, 18174, 14), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18382, 18170, 14), teleport = Position(18407, 18181, 14) },
        { pos = Position(18382, 18171, 14), teleport = Position(18408, 18181, 14) },
        { pos = Position(18382, 18172, 14), teleport = Position(18409, 18181, 14) },
        { pos = Position(18382, 18173, 14), teleport = Position(18410, 18181, 14) },
        { pos = Position(18382, 18174, 14), teleport = Position(18411, 18181, 14) },	
		
    },
    specPos = {
        from = Position(18398, 18162, 14), 
        to = Position(18419, 18184, 14), 
    },  
    exit = Position(18382, 18178, 14),     
	 
    storage = 376422,       
}    
    
local lever = BossLever(config)     
lever:aid(37710)      
lever:register()             