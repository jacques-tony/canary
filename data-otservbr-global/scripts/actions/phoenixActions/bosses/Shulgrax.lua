local config = {
    boss = {
        name = "Shulgrax",
        position = Position(18009, 18149, 12),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17958, 18148, 12), teleport = Position(18009, 18156, 12) },
        { pos = Position(17958, 18149, 12), teleport = Position(18010, 18156, 12) },
        { pos = Position(17958, 18150, 12), teleport = Position(18011, 18156, 12) },
        { pos = Position(17958, 18151, 12), teleport = Position(18008, 18156, 12) },
        { pos = Position(17958, 18152, 12), teleport = Position(18007, 18156, 12) },
    },
    specPos = {
        from = Position(17998, 18139, 12), 
        to = Position(18020, 18161, 12),
    },
    exit = Position(17960, 18160, 12),   
	
    storage = 376375,     
}   
 
local lever = BossLever(config) 
lever:aid(37657)  
lever:register()   