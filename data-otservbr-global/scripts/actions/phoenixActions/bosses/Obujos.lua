local config = {
    boss = {
        name = "Obujos",
        position = Position(18256, 17733, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18261, 17716, 11), teleport = Position(18254, 17742, 11) },
        { pos = Position(18262, 17716, 11), teleport = Position(18255, 17742, 11) },
        { pos = Position(18263, 17716, 11), teleport = Position(18256, 17742, 11) },
        { pos = Position(18260, 17716, 11), teleport = Position(18253, 17742, 11) },
        { pos = Position(18259, 17716, 11), teleport = Position(18252, 17742, 11) },
    },
    specPos = {
        from = Position(18241, 17721, 11), 
        to = Position(18271, 17744, 11),
    },
    exit = Position(18466, 17733, 11), 
	
    storage = 376365,   
}  
 
local lever = BossLever(config) 
lever:aid(37647) 
lever:register()   