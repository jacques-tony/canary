local config = {
	boss = {
		name = "Grand Master Oberon",
        position = Position(18176, 17736, 9),
	},
	playerPositions = {
        { pos = Position(18174, 17763, 9), teleport = Position(18176, 17741, 9) },
        { pos = Position(18175, 17763, 9), teleport = Position(18176, 17741, 9) },
        { pos = Position(18176, 17763, 9), teleport = Position(18176, 17741, 9) },
        { pos = Position(18177, 17763, 9), teleport = Position(18176, 17741, 9) },
        { pos = Position(18178, 17763, 9), teleport = Position(18176, 17741, 9) },
	},
	specPos = {
        from = Position(18169, 17731, 9),
        to = Position(18183, 17743, 9),
	},
    exit = Position(18176, 17760, 9),
}

local lever = BossLever(config)
lever:aid(57605)
lever:register()