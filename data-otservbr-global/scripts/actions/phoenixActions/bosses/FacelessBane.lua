local config = {
    boss = {
        name = "Faceless Bane",
        position = Position(18107, 17688, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18128, 17689, 13), teleport = Position(18107, 17694, 13) },
        { pos = Position(18129, 17689, 13), teleport = Position(18108, 17694, 13) },
        { pos = Position(18130, 17689, 13), teleport = Position(18109, 17694, 13) },
        { pos = Position(18131, 17689, 13), teleport = Position(18106, 17694, 13) },
        { pos = Position(18132, 17689, 13), teleport = Position(18105, 17694, 13) },
    },
    specPos = {
        from = Position(18098, 17681, 13), 
        to = Position(18117, 17697, 13),
    },
    exit = Position(18137, 17688, 13), 
	
    storage = 376367,   
}  
 
local lever = BossLever(config) 
lever:aid(37649)  
lever:register()   