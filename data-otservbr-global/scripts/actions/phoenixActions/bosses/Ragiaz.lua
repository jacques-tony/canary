local config = {
    boss = {
        name = "Ragiaz",
        position = Position(18146, 17973, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18120, 17995, 13), teleport = Position(18146, 17982, 13) },
        { pos = Position(18121, 17995, 13), teleport = Position(18147, 17982, 13) },
        { pos = Position(18122, 17995, 13), teleport = Position(18148, 17982, 13) },
        { pos = Position(18123, 17995, 13), teleport = Position(18145, 17982, 13) },
        { pos = Position(18124, 17995, 13), teleport = Position(18144, 17982, 13) },
    },
    specPos = {
        from = Position(18134, 17962, 13), 
        to = Position(18157, 17985, 13),
    },
    exit = Position(18115, 17995, 13),   
	 
    storage = 376391,     
}   
  
local lever = BossLever(config)   
lever:aid(37674)  
lever:register()        