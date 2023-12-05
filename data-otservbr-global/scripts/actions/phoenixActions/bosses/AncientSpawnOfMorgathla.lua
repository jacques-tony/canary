local config = {
    boss = {
        name = "Ancient Spawn Of Morgathla", 
        position = Position(18163, 17810, 10), 
    }, 
    timeAfterKill = 60, 
    playerPositions = {
        { pos = Position(18129, 17808, 10), teleport = Position(18161, 17813, 10) },
        { pos = Position(18130, 17808, 10), teleport = Position(18162, 17813, 10) },
        { pos = Position(18131, 17808, 10), teleport = Position(18163, 17813, 10) },
        { pos = Position(18132, 17808, 10), teleport = Position(18164, 17813, 10) },
        { pos = Position(18133, 17808, 10), teleport = Position(18165, 17813, 10) },	

        { pos = Position(18129, 17809, 10), teleport = Position(18161, 17814, 10) },
        { pos = Position(18130, 17809, 10), teleport = Position(18162, 17814, 10) },
        { pos = Position(18131, 17809, 10), teleport = Position(18163, 17814, 10) },
        { pos = Position(18132, 17809, 10), teleport = Position(18164, 17814, 10) },
        { pos = Position(18133, 17809, 10), teleport = Position(18165, 17814, 10) },	
		 
        { pos = Position(18129, 17810, 10), teleport = Position(18161, 17815, 10) },
        { pos = Position(18130, 17810, 10), teleport = Position(18162, 17815, 10) },
        { pos = Position(18131, 17810, 10), teleport = Position(18163, 17815, 10) },
        { pos = Position(18132, 17810, 10), teleport = Position(18164, 17815, 10) },
        { pos = Position(18133, 17810, 10), teleport = Position(18165, 17815, 10) },	
		 
        { pos = Position(18129, 17811, 10), teleport = Position(18161, 17816, 10) },
        { pos = Position(18130, 17811, 10), teleport = Position(18162, 17816, 10) },
        { pos = Position(18131, 17811, 10), teleport = Position(18163, 17816, 10) },
        { pos = Position(18132, 17811, 10), teleport = Position(18164, 17816, 10) },
        { pos = Position(18133, 17811, 10), teleport = Position(18165, 17816, 10) },	
		 
        { pos = Position(18129, 17812, 10), teleport = Position(18161, 17818, 10) },
        { pos = Position(18130, 17812, 10), teleport = Position(18162, 17818, 10) },
        { pos = Position(18131, 17812, 10), teleport = Position(18163, 17818, 10) },
        { pos = Position(18132, 17812, 10), teleport = Position(18164, 17818, 10) },
        { pos = Position(18133, 17812, 10), teleport = Position(18165, 17818, 10) },	
		 		 
		 
    }, 
    specPos = { 
        from = Position(18152, 17799, 10), 
        to = Position(18174, 17825, 10), 
    },  
    exit = Position(18120, 17804, 10),     
	 
    storage = 378010,         
}     
    
local lever = BossLever(config)      
lever:aid(37810)      
lever:register()                    