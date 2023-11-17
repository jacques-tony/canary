local config = {
    boss = {
        name = "The False God", 
        position = Position(17869, 17838, 11),
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(17868, 17815, 11), teleport = Position(17867, 17841, 11) },
        { pos = Position(17868, 17816, 11), teleport = Position(17868, 17841, 11) },
        { pos = Position(17868, 17817, 11), teleport = Position(17869, 17841, 11) },
        { pos = Position(17868, 17818, 11), teleport = Position(17870, 17841, 11) },
        { pos = Position(17868, 17819, 11), teleport = Position(17871, 17841, 11) },	
		
    },
    specPos = {
        from = Position(17859, 17830, 11), 
        to = Position(17881, 17844, 11), 
    }, 
    exit = Position(17874, 17817, 11),    
	 
    storage = 376411,      
}    
  
local lever = BossLever(config)     
lever:aid(37694)     
lever:register()           