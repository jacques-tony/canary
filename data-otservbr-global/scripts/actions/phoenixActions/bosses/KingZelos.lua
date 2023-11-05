local config = {
    boss = {
        name = "King Zelos",
        position = Position(18293, 18130, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18335, 18129, 13), teleport = Position(18290, 18133, 13) },
        { pos = Position(18335, 18130, 13), teleport = Position(18292, 18133, 13) },
        { pos = Position(18335, 18131, 13), teleport = Position(18294, 18133, 13) },
        { pos = Position(18335, 18132, 13), teleport = Position(18296, 18133, 13) },
        { pos = Position(18335, 18133, 13), teleport = Position(18291, 18134, 13) },	
        { pos = Position(18336, 18129, 13), teleport = Position(18293, 18134, 13) },
        { pos = Position(18336, 18130, 13), teleport = Position(18295, 18134, 13) },
        { pos = Position(18336, 18131, 13), teleport = Position(18292, 18135, 13) },
        { pos = Position(18336, 18132, 13), teleport = Position(18294, 18135, 13) },
        { pos = Position(18336, 18133, 13), teleport = Position(18293, 18136, 13) },		
    },
    specPos = {
        from = Position(18283, 18120, 13), 
        to = Position(18304, 18141, 13),
    },
    exit = Position(18340, 18130, 13),   
	 
    storage = 376393,     
}   
  
local lever = BossLever(config)   
lever:aid(37676)   
lever:register()        