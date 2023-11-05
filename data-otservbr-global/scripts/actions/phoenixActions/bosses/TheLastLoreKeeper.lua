local config = {
    boss = {
        name = "The Last Lore Keeper",
        position = Position(17588, 17964, 13),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17621, 17961, 13), teleport = Position(17588, 17970, 13) },
        { pos = Position(17621, 17962, 13), teleport = Position(17589, 17970, 13) },
        { pos = Position(17621, 17963, 13), teleport = Position(17590, 17970, 13) },
        { pos = Position(17621, 17964, 13), teleport = Position(17587, 17970, 13) },
        { pos = Position(17621, 17965, 13), teleport = Position(17586, 17970, 13) },	
		
        { pos = Position(17620, 17961, 13), teleport = Position(17586, 17971, 13) },
        { pos = Position(17620, 17962, 13), teleport = Position(17587, 17971, 13) },
        { pos = Position(17620, 17963, 13), teleport = Position(17588, 17971, 13) },
        { pos = Position(17620, 17964, 13), teleport = Position(17589, 17971, 13) },
        { pos = Position(17620, 17965, 13), teleport = Position(17590, 17971, 13) },	
		
        { pos = Position(17622, 17961, 13), teleport = Position(17590, 17972, 13) },
        { pos = Position(17622, 17962, 13), teleport = Position(17589, 17972, 13) },
        { pos = Position(17622, 17963, 13), teleport = Position(17588, 17972, 13) },
        { pos = Position(17622, 17964, 13), teleport = Position(17587, 17972, 13) },
        { pos = Position(17622, 17965, 13), teleport = Position(17586, 17972, 13) },			
    },
    specPos = {
        from = Position(17577, 17954, 13), 
        to = Position(17598, 17974, 13),
    },
    exit = Position(17621, 17969, 13),   
	 
    storage = 376397,      
}   
  
local lever = BossLever(config)   
lever:aid(37680)   
lever:register()        