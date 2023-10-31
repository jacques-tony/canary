local config = {
    boss = {
        name = "Count Vlarkorth",
        position = Position(18243, 18081, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18242, 18057, 13), teleport = Position(18243, 18088, 13) },
        { pos = Position(18243, 18057, 13), teleport = Position(18244, 18088, 13) },
        { pos = Position(18244, 18057, 13), teleport = Position(18245, 18088, 13) },
        { pos = Position(18245, 18057, 13), teleport = Position(18242, 18088, 13) },
        { pos = Position(18246, 18057, 13), teleport = Position(18241, 18088, 13) },
    },
    specPos = {
        from = Position(18234, 18071, 13), 
        to = Position(18253, 18091, 13),
    },
    exit = Position(18248, 18050, 13),   
	 
    storage = 376377,     
}   
  
local lever = BossLever(config)  
lever:aid(37660)  
lever:register()   