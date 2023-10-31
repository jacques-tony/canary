local config = {
    boss = {
        name = "Duke Krule",
        position = Position(18244, 18117, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18242, 18137, 13), teleport = Position(18244, 18122, 13) },
        { pos = Position(18243, 18137, 13), teleport = Position(18245, 18122, 13) },
        { pos = Position(18244, 18137, 13), teleport = Position(18246, 18122, 13) },
        { pos = Position(18245, 18137, 13), teleport = Position(18243, 18122, 13) },
        { pos = Position(18246, 18137, 13), teleport = Position(18242, 18122, 13) },
    },
    specPos = {
        from = Position(18234, 18106, 13), 
        to = Position(18253, 18126, 13),
    },
    exit = Position(18238, 18142, 13),   
	
    storage = 376373,     
}   
 
local lever = BossLever(config) 
lever:aid(37655)  
lever:register()   