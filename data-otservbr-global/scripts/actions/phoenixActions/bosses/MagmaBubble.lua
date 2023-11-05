local config = {
    boss = {
        name = "Magma Bubble",
        position = Position(17033, 17727, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17050, 17745, 8), teleport = Position(17033, 17736, 8) },
        { pos = Position(17050, 17746, 8), teleport = Position(17034, 17736, 8) },
        { pos = Position(17050, 17747, 8), teleport = Position(17035, 17736, 8) },
        { pos = Position(17050, 17748, 8), teleport = Position(17032, 17736, 8) },
        { pos = Position(17050, 17749, 8), teleport = Position(17031, 17736, 8) },
    },
    specPos = {
        from = Position(17020, 17715, 8), 
        to = Position(17044, 17739, 8),
    },
    exit = Position(17050, 17752, 8),   
	 
    storage = 376387,     
}   
  
local lever = BossLever(config)   
lever:aid(37670)  
lever:register()      