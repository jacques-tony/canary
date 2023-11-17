local config = {
    boss = {
        name = "Ferumbras Mortal Shell", 
        position = Position(18179, 18117, 14),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18057, 18121, 14), teleport = Position(18179, 18109, 14) },
        { pos = Position(18057, 18122, 14), teleport = Position(18178, 18109, 14) },
        { pos = Position(18057, 18123, 14), teleport = Position(18177, 18109, 14) },
        { pos = Position(18057, 18124, 14), teleport = Position(18180, 18109, 14) },
        { pos = Position(18057, 18125, 14), teleport = Position(18181, 18109, 14) },

        { pos = Position(18056, 18121, 14), teleport = Position(18179, 18108, 14) },
        { pos = Position(18056, 18122, 14), teleport = Position(18178, 18108, 14) },
        { pos = Position(18056, 18123, 14), teleport = Position(18177, 18108, 14) },
        { pos = Position(18056, 18124, 14), teleport = Position(18180, 18108, 14) },
        { pos = Position(18056, 18125, 14), teleport = Position(18181, 18108, 14) },

        { pos = Position(18058, 18121, 14), teleport = Position(18179, 18107, 14) },
        { pos = Position(18058, 18122, 14), teleport = Position(18178, 18107, 14) },
        { pos = Position(18058, 18123, 14), teleport = Position(18177, 18107, 14) },
        { pos = Position(18058, 18124, 14), teleport = Position(18180, 18107, 14) },
        { pos = Position(18058, 18125, 14), teleport = Position(18181, 18107, 14) },		 

    },
    specPos = {
        from = Position(18165, 18103, 14), 
        to = Position(18193, 18130, 14),
    }, 
    exit = Position(18057, 18116, 14),    
	 
    storage = 376402,       
}    
  
local lever = BossLever(config)    
lever:aid(37685)    
lever:register()        