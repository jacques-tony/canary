local config = {
    boss = {
        name = "Plagirath",
        position = Position(18074, 18235, 15),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18130, 18234, 15), teleport = Position(18074, 18242, 15) },
        { pos = Position(18130, 18235, 15), teleport = Position(18075, 18242, 15) },
        { pos = Position(18130, 18236, 15), teleport = Position(18076, 18242, 15) },
        { pos = Position(18130, 18237, 15), teleport = Position(18073, 18242, 15) },
        { pos = Position(18130, 18238, 15), teleport = Position(18072, 18242, 15) },
    },
    specPos = {
        from = Position(18060, 18224, 15), 
        to = Position(18088, 18246, 15),
    },
    exit = Position(18131, 18225, 15 ),   
	
    storage = 376374,     
}   
 
local lever = BossLever(config) 
lever:aid(37656)  
lever:register()   