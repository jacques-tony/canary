damage_resets = {
    {1, 9, 1.00},
    {10, 19, 1.25},
    {20, 29, 1.50},
    {30, 50, 2.00} 
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

attackspeed_resets = { 
    {1, 30, 13},
}

function Player.getAttackSpeedResets(self) 
    local attackSpeed = 0
    local resets = self:getResets()

    for _, range in ipairs(attackspeed_resets) do
        local start_range, end_range, value = range[1], range[2], range[3]
        if resets >= start_range and resets <= end_range then
            attackSpeed = value
            break
        end
    end
 
    local limitSpeed = 100 
    local maxResetToSpeed = 30 
    if resets >= maxResetToSpeed then
        return limitSpeed
    else 
        return 510 - attackSpeed * resets
    end
end

resetConfig = {
    storage_time = 499,
    time_to_reset = 24 * 60 * 60, -- 24 horas.
	storage = 500,
	limitResets = 30,
    backToLevel = 8, 
    redskull = true, -- need to be without redskull to reset?
    battle = true, -- need to be without battle to reset?
    pz = true, -- need to be in protect zone to reset?
    stages = {
        {resets = 4,      level = 1850,   premium  = 1800, price_free = 1000000, price_premium = 500000},
        {resets = 9,      level = 2590,   premium  = 2340, price_free = 2000000, price_premium = 1000000},
        {resets = 14,     level = 3626,   premium  = 3042, price_free = 3000000, price_premium = 1500000},
        {resets = 19,     level = 5076,   premium  = 3955, price_free = 4000000, price_premium = 2000000},
        {resets = 24,     level = 7361,   premium  = 5141, price_free = 5000000, price_premium = 2500000},
        {resets = 30,     level = 10673,  premium  = 6683, price_free = 6000000, price_premium = 3000000},
        {resets = 100,    level = 15476,  premium  = 8688, price_free = 7000000, price_premium = 3500000} 
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

function Player.getResetsPrice(self)
	local price = 0
	for _, info in ipairs(resetConfig.stages) do
		if self:getResets() <= info.resets then
			price = self:isPremium() and info.price_premium or info.price_free
			break
		end
	end
	return price
end