local config = {
    boss = {
        name = "The Count Of The Core",
        position = Position(18037, 17830, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18062, 17822, 14), teleport = Position(18037, 17837, 14) },
        { pos = Position(18063, 17822, 14), teleport = Position(18036, 17837, 14) },
        { pos = Position(18064, 17822, 14), teleport = Position(18035, 17837, 14) },
        { pos = Position(18061, 17822, 14), teleport = Position(18038, 17837, 14) },
        { pos = Position(18060, 17822, 14), teleport = Position(18039, 17837, 14) },
    },
    specPos = {
        from = Position(18027, 17818, 14), 
        to = Position(18047, 17841, 14),
    },
    exit = Position(17981, 18234, 14), 
	
    storage = 376361, 
}  
 
local lever = BossLever(config) 
lever:aid(37643) 
lever:register()   