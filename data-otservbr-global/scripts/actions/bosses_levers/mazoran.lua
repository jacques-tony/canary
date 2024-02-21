local config = {
    boss = {
        name = "Mazoran",
        position = Position(18088, 17900, 14),
    },

	timeToDefeat = 30 * 60,
	playerPositions = {
        { pos = Position(18097, 17855, 14), teleport = Position(18093, 17904, 14), effect = CONST_ME_TELEPORT },
        { pos = Position(18097, 17856, 14), teleport = Position(18093, 17904, 14), effect = CONST_ME_TELEPORT },
        { pos = Position(18097, 17857, 14), teleport = Position(18093, 17904, 14), effect = CONST_ME_TELEPORT },
        { pos = Position(18097, 17858, 14), teleport = Position(18093, 17904, 14), effect = CONST_ME_TELEPORT },
        { pos = Position(18097, 17859, 14), teleport = Position(18093, 17904, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
        from = Position(18076, 17889, 14),
        to = Position(18103, 17912, 14),
	},
    exit = Position(18097, 17868, 14),
}

local lever = BossLever(config) 
lever:uid(1025)
lever:register()  