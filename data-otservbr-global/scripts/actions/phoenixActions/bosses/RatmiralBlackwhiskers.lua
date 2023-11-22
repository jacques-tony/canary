local config = {
    boss = {
        name = "Ratmiral Blackwhiskers",
        position = Position(18243, 17989, 6),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18230, 18026, 7), teleport = Position(18242, 17995, 6) },
        { pos = Position(18231, 18026, 7), teleport = Position(18243, 17995, 6) },
        { pos = Position(18232, 18026, 7), teleport = Position(18244, 17995, 6) },
        { pos = Position(18233, 18026, 7), teleport = Position(18241, 17995, 6) },
        { pos = Position(18234, 18026, 7), teleport = Position(18240, 17995, 6) },
    },
    specPos = {
        from = Position(18234, 17982, 6), 
        to = Position(18251, 17996, 6),
    },
    exit = Position(18225, 18025, 7),   
	
    storage = 376372,    
}  
 
local lever = BossLever(config) 
lever:aid(37654)  
lever:register()   