damage_resets = {
    {1, 9, 0.85},
    {10, 19, 10.00},
    {20, 24, 1.25},
    {30, 50, 1.50}
}

function Player.getDamageResets(self) 
    local percent = 0.0
    local resets = self:getResets()

    for _, range in ipairs(damage_resets) do
        local start_range, end_range, value = range[1], range[2], range[3]
        if resets >= start_range and resets <= end_range then
            percent = value
            break
        end
    end
    return percent * resets
end

resetConfig = {
	storage = 500,
    backToLevel = 8,
    redskull = true, -- need to be without redskull to reset?
    battle = true, -- need to be without battle to reset?
    pz = true, -- need to be in protect zone to reset?
    stages = {
        {resets = 4,      level = 950,  premium  = 900},
        {resets = 9,      level = 1330,  premium  = 1170},
        {resets = 14,     level = 1862,  premium  = 1521},
        {resets = 19,     level = 2607,  premium  = 1977},
        {resets = 24,     level = 3780,  premium  = 2570},
        {resets = 30,     level = 5481,  premium  = 3342},
        {resets = 31,     level = 999999, premium  = 999999}
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