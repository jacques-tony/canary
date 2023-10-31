local config = {
    boss = {
        name = "Jaul",
        position = Position(18368, 17737, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18383, 17748, 11), teleport = Position(18368, 17745, 11) },
        { pos = Position(18384, 17748, 11), teleport = Position(18367, 17745, 11) },
        { pos = Position(18385, 17748, 11), teleport = Position(18366, 17745, 11) },
        { pos = Position(18382, 17748, 11), teleport = Position(18369, 17745, 11) },
        { pos = Position(18381, 17748, 11), teleport = Position(18370, 17745, 11) },
    },
    specPos = {
        from = Position(18353, 17727, 11), 
        to = Position(18380, 17749, 11),
    },
    exit = Position(18386, 17753, 11), 
	
    storage = 376369,    
}  
 
local lever = BossLever(config) 
lever:aid(37651)  
lever:register()   