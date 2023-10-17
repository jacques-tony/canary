local config = {
    boss = {
        name = "Gnomevil",
        position = Position(18126, 17969, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18107, 17991, 14), teleport = Position(18126, 17980, 14) },
        { pos = Position(18106, 17991, 14), teleport = Position(18125, 17980, 14) },
        { pos = Position(18105, 17991, 14), teleport = Position(18124, 17980, 14) },
        { pos = Position(18108, 17991, 14), teleport = Position(18127, 17980, 14) },
        { pos = Position(18109, 17991, 14), teleport = Position(18128, 17980, 14) },
    }, 
    specPos = {
        from = Position(18112, 17957, 14),
        to = Position(18139, 17985, 14),
    },
    exit = Position(18102, 17993, 14),
	
    storage = 376355,  
}
 
local lever = BossLever(config)
lever:aid(37637)
lever:register()