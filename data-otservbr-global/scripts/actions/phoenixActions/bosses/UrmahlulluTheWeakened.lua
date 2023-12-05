local config = {
    boss = {
        name = "Urmahlullu The Immaculate",
        position = Position(18265, 18523, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18265, 18499, 8), teleport = Position(18267, 18532, 8) },
        { pos = Position(18266, 18499, 8), teleport = Position(18266, 18532, 8) },
        { pos = Position(18267, 18499, 8), teleport = Position(18265, 18532, 8) },
        { pos = Position(18268, 18499, 8), teleport = Position(18264, 18532, 8) },
        { pos = Position(18269, 18499, 8), teleport = Position(18263, 18532, 8) },	
    },
    specPos = {
        from = Position(18253, 18509, 8), 
        to = Position(18278, 18536, 8),
    },
    exit = Position(18267, 18487, 8),   
	 
    storage = 376396,     
}   
  
local lever = BossLever(config)   
lever:aid(37679)   
lever:register()        