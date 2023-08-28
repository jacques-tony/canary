resetConfig = {
	storage = 500,
    backToLevel = 8,
    redskull = true, -- need to be without redskull to reset?
    battle = true, -- need to be without battle to reset?
    pz = true, -- need to be in protect zone to reset?
    stages = {
        {resets = 4,      level = 100,  premium  = 330},
        {resets = 9,      level = 355,  premium  = 340},
        {resets = 14,     level = 360,  premium  = 355},
        {resets = 19,     level = 365,  premium  = 360},
        {resets = 24,     level = 380,  premium  = 370},
        {resets = 29,     level = 390,  premium  = 380},
        {resets = 34,     level = 410,  premium  = 400},
        {resets = 39,     level = 430,  premium  = 420},
        {resets = 44,     level = 450,  premium  = 440},
        {resets = 49,     level = 480,  premium  = 470},
        {resets = 54,     level = 510,  premium  = 500},
        {resets = 59,     level = 550,  premium  = 540},
        {resets = 64,     level = 590,  premium  = 580},
        {resets = 69,     level = 630,  premium  = 620},
        {resets = 74,     level = 680,  premium  = 670},
        {resets = 79,     level = 730,  premium  = 720},
        {resets = 84,     level = 780,  premium  = 770},
        {resets = 89,     level = 860,  premium  = 840},
        {resets = 94,     level = 930,  premium  = 910},
        {resets = 2^1024, level = 1010, premium  = 990}
    }
}

function getExperienceForLevel(lv)
	lv = lv - 1
	return ((50 * lv * lv * lv) - (150 * lv * lv) + (400 * lv)) / 3
end

function Player.getResets(self)
	local resets = self:getStorageValue(resetConfig.storage)
	return resets < 0 and 0 or resets
end

function Player.addReset(self, count)
	self:setStorageValue(resetConfig.storage, self:getResets() + count)
end

function Player.getResetLevel(self)
	local level = 0
	for _, info in ipairs(resetConfig.stages) do
		if self:getResets() <= info.resets then
			level = self:isPremium() and info.premium or info.level
			break
		end
	end
	return level
end