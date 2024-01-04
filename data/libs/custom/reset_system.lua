damage_resets = {
    {1, 2, 1},--1
    {2, 3, 1},--2
    {3, 4, 1},--3
    {4, 5, 1},--4
    {5, 6, 1},--5

    {6, 7, 2},--7
    {7, 8, 2},--9
    {8, 9, 2},--11
    {9, 10, 2},--13
    {10, 11, 2},--15

    {11, 12, 3},--18
    {12, 13, 3},--21
    {13, 14, 3},--24
    {14, 15, 3},--27
    {15, 16, 3},--30

    {16, 17, 4},--34
    {17, 18, 4},--38
    {18, 19, 4},--42
    {19, 20, 4},--46
    {20, 21, 4},--50

    {21, 22, 5},--55
    {22, 23, 5},--60
    {23, 24, 5},--65
    {24, 25, 5},--70
    {25, 26, 5},--75

    {26, 27, 6},--81
    {27, 28, 6},--87
    {28, 29, 6},--93
    {29, 30, 6},--99
    {30, 30, 6},--99

} 

function Player.getDamageResets(self) 
    local totalPercent = 0.0
    local resets = self:getResets()

    for _, range in ipairs(damage_resets) do
        local start_range, end_range, value = range[1], range[2], range[3]
        if resets >= start_range then
            totalPercent = totalPercent + value
        end
    end
    return totalPercent
end


attackspeed_resets = { 
    {1, 30, 11},
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
    local maxResetToSpeed = 100  
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
            {resets = 0, level = 1850, premium = 1800, price_free = 1500000, price_premium = 1000000},
            {resets = 1, level = 2000, premium = 1900, price_free = 3000000, price_premium = 2000000},
            {resets = 2, level = 2150, premium = 2000, price_free = 4500000, price_premium = 3000000},
            {resets = 3, level = 2300, premium = 2100, price_free = 6000000, price_premium = 4000000},
            {resets = 4, level = 2450, premium = 2200, price_free = 7500000, price_premium = 5000000},
            {resets = 5, level = 2650, premium = 2350, price_free = 9500000, price_premium = 6500000},
            {resets = 6, level = 2850, premium = 2500, price_free = 11500000, price_premium = 8000000},
            {resets = 7, level = 3050, premium = 2650, price_free = 13500000, price_premium = 9500000},
            {resets = 8, level = 3250, premium = 2800, price_free = 15500000, price_premium = 11000000},
            {resets = 9, level = 3450, premium = 2950, price_free = 17500000, price_premium = 12500000},
            {resets = 10, level = 3700, premium = 3150, price_free = 20000000, price_premium = 14500000},
            {resets = 11, level = 3950, premium = 3350, price_free = 22500000, price_premium = 16500000},
            {resets = 12, level = 4200, premium = 3550, price_free = 25000000, price_premium = 18500000},
            {resets = 13, level = 4450, premium = 3750, price_free = 27500000, price_premium = 20500000},
            {resets = 14, level = 4700, premium = 3950, price_free = 30000000, price_premium = 22500000},
            {resets = 15, level = 5000, premium = 4200, price_free = 33000000, price_premium = 25000000},
            {resets = 16, level = 5300, premium = 4450, price_free = 36000000, price_premium = 27500000},
            {resets = 17, level = 5600, premium = 4700, price_free = 39000000, price_premium = 30000000},
            {resets = 18, level = 5900, premium = 4950, price_free = 42000000, price_premium = 32500000},
            {resets = 19, level = 6200, premium = 5200, price_free = 45000000, price_premium = 35000000},
            {resets = 20, level = 6550, premium = 5500, price_free = 48500000, price_premium = 38000000},
            {resets = 21, level = 6900, premium = 5800, price_free = 52000000, price_premium = 41000000},
            {resets = 22, level = 7250, premium = 6100, price_free = 55500000, price_premium = 44000000},
            {resets = 23, level = 7600, premium = 6400, price_free = 59000000, price_premium = 47000000},
            {resets = 24, level = 7950, premium = 6700, price_free = 62500000, price_premium = 50000000},
            {resets = 25, level = 8350, premium = 7050, price_free = 66500000, price_premium = 53500000},
            {resets = 26, level = 8750, premium = 7400, price_free = 70500000, price_premium = 57000000},
            {resets = 27, level = 9150, premium = 7750, price_free = 74500000, price_premium = 60500000},
            {resets = 28, level = 9550, premium = 8100, price_free = 78500000, price_premium = 64000000},
            {resets = 29, level = 9950, premium = 8450, price_free = 82500000, price_premium = 67500000},
            {resets = 30, level = 10350, premium = 8800, price_free = 86500000, price_premium = 71000000},

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