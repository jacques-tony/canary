local config = {
    boss = {
        name = "Lokathmor",
        position = Position(17997, 18132, 8),
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(17967, 18192, 8), teleport = Position(17996, 18137, 8) },
        { pos = Position(17968, 18192, 8), teleport = Position(17997, 18137, 8) },
        { pos = Position(17969, 18192, 8), teleport = Position(17998, 18137, 8) },
        { pos = Position(17970, 18192, 8), teleport = Position(17995, 18137, 8) },
        { pos = Position(17971, 18192, 8), teleport = Position(17994, 18137, 8) },
    },
    specPos = {
        from = Position(17986, 18122, 8), 
        to = Position(18006, 18140, 8),
    },
    exit = Position(17965, 18187, 8),   
	 
    storage = 376385,     
}   
  
local lever = BossLever(config)   
lever:aid(37668)  
lever:register()     