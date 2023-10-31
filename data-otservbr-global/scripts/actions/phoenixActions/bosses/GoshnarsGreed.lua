local config = {
    boss = {
        name = "Goshnar's Greed",
        position = Position(17966, 18655, 11),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17996, 18654, 11), teleport = Position(17967, 18660, 11) },
        { pos = Position(17997, 18654, 11), teleport = Position(17968, 18660, 11) },
        { pos = Position(17998, 18654, 11), teleport = Position(17969, 18660, 11) },
        { pos = Position(17999, 18654, 11), teleport = Position(17966, 18660, 11) },
        { pos = Position(18000, 18654, 11), teleport = Position(17965, 18660, 11) },
    },
    specPos = {
        from = Position(17957, 18647, 11), 
        to = Position(17977, 18664, 11),
    },
    exit = Position(18003, 18653, 11),   
	 
    storage = 376382,     
}   
  
local lever = BossLever(config)  
lever:aid(37665)  
lever:register()    