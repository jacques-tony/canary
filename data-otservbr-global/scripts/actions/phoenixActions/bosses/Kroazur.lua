local config = {
    boss = {
        name = "Kroazur",
        position = Position(18261, 17349, 10),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18287, 17347, 9), teleport = Position(18259, 17356, 10) },
        { pos = Position(18286, 17347, 9), teleport = Position(18258, 17356, 10) },
        { pos = Position(18285, 17347, 9), teleport = Position(18257, 17356, 10) },
        { pos = Position(18288, 17347, 9), teleport = Position(18260, 17356, 10) },
        { pos = Position(18289, 17347, 9), teleport = Position(18261, 17356, 10) },
    }, 
    specPos = {
        from = Position(18252, 17340, 10),
        to = Position(18272, 17359, 10), 
    },
    exit = Position(18285, 17350, 9),
	
    storage = 376356,  
}
 
local lever = BossLever(config)
lever:aid(37638)
lever:register()