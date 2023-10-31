local config = {
    boss = {
        name = "Tanjis",
        position = Position(18471, 17711, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18466, 17730, 11), teleport = Position(18472, 17719, 11) },
        { pos = Position(18467, 17730, 11), teleport = Position(18473, 17719, 11) },
        { pos = Position(18468, 17730, 11), teleport = Position(18474, 17719, 11) },
        { pos = Position(18465, 17730, 11), teleport = Position(18471, 17719, 11) },
        { pos = Position(18464, 17730, 11), teleport = Position(18470, 17719, 11) },
    },
    specPos = {
        from = Position(18458, 17698, 11), 
        to = Position(18484, 17725, 11),
    },
    exit = Position(18466, 17733, 11), 
	
    storage = 376364,   
}  
 
local lever = BossLever(config) 
lever:aid(37646) 
lever:register()   