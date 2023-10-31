local config = {
    boss = {
        name = "Goshnar's Hatred",
        position = Position(17963, 18588, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17993, 18590, 11), teleport = Position(17963, 18593, 11) },
        { pos = Position(17994, 18590, 11), teleport = Position(17964, 18593, 11) },
        { pos = Position(17995, 18590, 11), teleport = Position(17965, 18593, 11) },
        { pos = Position(17996, 18590, 11), teleport = Position(17962, 18593, 11) },
        { pos = Position(17997, 18590, 11), teleport = Position(17961, 18593, 11) },
    },
    specPos = {
        from = Position(17954, 18581, 11), 
        to = Position(17973, 18597, 11),
    },
    exit = Position(18001, 18589, 11),  
	
    storage = 376371,    
}  
 
local lever = BossLever(config) 
lever:aid(37653)  
lever:register()   