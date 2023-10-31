local config = {
    boss = {
        name = "Horestis",
        position = Position(18011, 17855, 8), -- Centro da Sala
    }, 
    timeAfterKill = 60,
    playerPositions = {
        { pos = Position(18011, 17841, 8), teleport = Position(18012, 17849, 8) }, -- 1º Fila Alavanca
        { pos = Position(18009, 17841, 8), teleport = Position(18012, 17849, 8) },
        { pos = Position(18010, 17841, 8), teleport = Position(18011, 17849, 8) },
        { pos = Position(18012, 17841, 8), teleport = Position(18011, 17849, 8) },
        { pos = Position(18013, 17841, 8), teleport = Position(18014, 17850, 8) },
    }, 
    specPos = {
        from = Position(18003, 17848, 8), -- Superior Esquerdo
        to = Position(18020, 17864, 8), -- Inferior Direito
    },
    exit = Position(18003, 17840, 8),
	
    storage = 376357,  
}
 
local lever = BossLever(config)
lever:aid(37639)
lever:register()