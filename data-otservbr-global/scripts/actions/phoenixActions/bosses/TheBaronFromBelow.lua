local config = {
    boss = {
        name = "The Baron From Below",
        position = Position(18037, 17830, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18062, 17822, 14), teleport = Position(18035, 17836, 14) },
        { pos = Position(18061, 17822, 14), teleport = Position(18036, 17836, 14) },
        { pos = Position(18060, 17822, 14), teleport = Position(18037, 17836, 14) },
        { pos = Position(18063, 17822, 14), teleport = Position(18038, 17836, 14) },
        { pos = Position(18064, 17822, 14), teleport = Position(18039, 17836, 14) },
    },
    specPos = {
        from = Position(18027, 17819, 14), 
        to = Position(18048, 17842, 14),
    },
    exit = Position(17978, 18235, 14), 
	
    storage = 376360, 
}  
 
local lever = BossLever(config)  
lever:aid(37642)
lever:register()   