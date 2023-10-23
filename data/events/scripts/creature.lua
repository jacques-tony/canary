outfitLook = {
	136,137,138,139,140,141,142,
	147,148,149,150,155,156,157,
	158,252,269,270,279,288,324,
	329,336,366,431,433,464,466,
	471,513,514,542,575,578,618,
	620,632,635,636,664,666,683,
	694,696,698,724,732,745,749,
	759,845,852,874,885,900,909,
	929,956,958,963,965,967,969,
	971,973,975,1020,1024,1043,
	1050,1057,1070,1095,1103,1128,
	1147,1162,1174,1187,1203,1205,
	1207,1211,1246,1244,1252,
	1271,1283,1289,1293,1323,
	1332,1339,1372,1383,1385,1387,
	1416,1437,1445,1450,1456,1461,
	1490,1501,128,129,130,
	131,132,133,134,
	143,144,145,146,151,152,153,
	154,251,268,273,278,289,325,
	328,335,367,430,432,463,465,
	472,512,516,541,574,577,610,
	619,633,634,637,665,667,684,
	695,697,699,725,733,746,750,
	760,846,853,873,884,899,908,
	931,955,957,962,964,966,968,
	970,972,974,1021,1023,1042,
	1051,1056,1069,1094,1102,1127,
	1146,1161,1173,1186,1202,1204,
	1206,1210,1243,1245,1251,1270,
	1279,1331,1280,1282,1288,
	1292,1152,1322,1338,1371,1382,
	1384,1386,1415,1436,1444,1449,
	1457,1460,1489,1500
}

function createBonusCondition(id, params)
    local condition = Condition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT)
    condition:setParameter(CONDITION_PARAM_TICKS, -1)
    condition:setParameter(CONDITION_PARAM_SUBID, id)
    for i = 1, #params do
        local param = params[i].param
        local value = params[i].value
        condition:setParameter(param, value)
    end
    return condition
end

outfitBonuses = {
    -- tier 10 outfit full
 	-- [10] = createBonusCondition(1, {
   --         {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 2},
   --         {param = CONDITION_PARAM_SKILL_FIST, value = 2},            
   --         {param = CONDITION_PARAM_SKILL_CLUB, value = 2},
   --         {param = CONDITION_PARAM_SKILL_SWORD, value = 2},
   --         {param = CONDITION_PARAM_SKILL_AXE, value = 2},
   --         {param = CONDITION_PARAM_SKILL_DISTANCE, value = 2},
   --         {param = CONDITION_PARAM_SKILL_SHIELD, value = 2},
    --        {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 101}, -- +10%
    --        {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 101},
    --    }
    --),
    -- tier 20 outfit full
    [20] = createBonusCondition(1, {
            {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 3},
            {param = CONDITION_PARAM_SKILL_FIST, value = 3},               
            {param = CONDITION_PARAM_SKILL_CLUB, value = 3},
            {param = CONDITION_PARAM_SKILL_SWORD, value = 3},
            {param = CONDITION_PARAM_SKILL_AXE, value = 3},
            {param = CONDITION_PARAM_SKILL_DISTANCE, value = 3},
            {param = CONDITION_PARAM_SKILL_SHIELD, value = 3},
    --      {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 103},
    --      {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 103},
        }
    ),
    -- tier 30 outfit full    
    [30] = createBonusCondition(2, {
            {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 4},
            {param = CONDITION_PARAM_SKILL_FIST, value = 4},               
            {param = CONDITION_PARAM_SKILL_CLUB, value = 4},
            {param = CONDITION_PARAM_SKILL_SWORD, value = 4},
            {param = CONDITION_PARAM_SKILL_AXE, value = 4},
            {param = CONDITION_PARAM_SKILL_DISTANCE, value = 4},
            {param = CONDITION_PARAM_SKILL_SHIELD, value = 4},
    --      {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 105},
    --      {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 105},
        }
    ),
    -- tier 40 outfit full    
    [40] = createBonusCondition(3, {
            {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 5},
            {param = CONDITION_PARAM_SKILL_FIST, value = 5},               
            {param = CONDITION_PARAM_SKILL_CLUB, value = 5},
            {param = CONDITION_PARAM_SKILL_SWORD, value = 5},
            {param = CONDITION_PARAM_SKILL_AXE, value = 5},
            {param = CONDITION_PARAM_SKILL_DISTANCE, value = 5},
            {param = CONDITION_PARAM_SKILL_SHIELD, value = 5},
    --      {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 107},
    --      {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 107},
        }
    ),
    -- tier 50 outfit full    
    [50] = createBonusCondition(4, {
            {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 7},
            {param = CONDITION_PARAM_SKILL_CLUB, value = 7},
            {param = CONDITION_PARAM_SKILL_FIST, value = 7},               
            {param = CONDITION_PARAM_SKILL_SWORD, value = 7},
            {param = CONDITION_PARAM_SKILL_AXE, value = 7},
            {param = CONDITION_PARAM_SKILL_DISTANCE, value = 7},
            {param = CONDITION_PARAM_SKILL_SHIELD, value = 7},
    --      {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 109},
    --      {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 109},
        }
    ),
    -- tier 60 outfit full       
    [60] = createBonusCondition(5, {
            {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 8},
            {param = CONDITION_PARAM_SKILL_FIST, value = 8},               
            {param = CONDITION_PARAM_SKILL_CLUB, value = 8},
            {param = CONDITION_PARAM_SKILL_SWORD, value = 8},
            {param = CONDITION_PARAM_SKILL_AXE, value = 8},
            {param = CONDITION_PARAM_SKILL_DISTANCE, value = 8},
            {param = CONDITION_PARAM_SKILL_SHIELD, value = 8},
    --      {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 110},
    --      {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 110},
        }
    ),    
    -- tier 70 outfit full            
    [70] = createBonusCondition(6, {
            {param = CONDITION_PARAM_STAT_MAGICPOINTS, value = 10},
            {param = CONDITION_PARAM_SKILL_FIST, value = 10},               
            {param = CONDITION_PARAM_SKILL_CLUB, value = 10},
            {param = CONDITION_PARAM_SKILL_SWORD, value = 10},
            {param = CONDITION_PARAM_SKILL_AXE, value = 10},
            {param = CONDITION_PARAM_SKILL_DISTANCE, value = 10},
            {param = CONDITION_PARAM_SKILL_SHIELD, value = 10},
    --      {param = CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, value = 112},
    --      {param = CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, value = 112},
        }
    ),
}

--[[
CONDITION_PARAM_OWNER
CONDITION_PARAM_TICKS
CONDITION_PARAM_HEALTHGAIN
CONDITION_PARAM_HEALTHTICKS
CONDITION_PARAM_MANAGAIN
CONDITION_PARAM_MANATICKS
CONDITION_PARAM_DELAYED
CONDITION_PARAM_SPEED
CONDITION_PARAM_LIGHT_LEVEL
CONDITION_PARAM_LIGHT_COLOR
CONDITION_PARAM_SOULGAIN
CONDITION_PARAM_SOULTICKS
CONDITION_PARAM_MINVALUE
CONDITION_PARAM_MAXVALUE
CONDITION_PARAM_STARTVALUE
CONDITION_PARAM_TICKINTERVAL
CONDITION_PARAM_FORCEUPDATE
CONDITION_PARAM_SKILL_MELEE
CONDITION_PARAM_SKILL_FIST
CONDITION_PARAM_SKILL_CLUB
CONDITION_PARAM_SKILL_SWORD
CONDITION_PARAM_SKILL_AXE
CONDITION_PARAM_SKILL_DISTANCE
CONDITION_PARAM_SKILL_SHIELD
CONDITION_PARAM_SKILL_FISHING
CONDITION_PARAM_STAT_MAXHITPOINTS
CONDITION_PARAM_STAT_MAXMANAPOINTS
CONDITION_PARAM_STAT_SOULPOINTS
CONDITION_PARAM_STAT_MAGICPOINTS
CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT
CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT
CONDITION_PARAM_STAT_SOULPOINTSPERCENT
CONDITION_PARAM_STAT_MAGICPOINTSPERCENT
CONDITION_PARAM_PERIODICDAMAGE
CONDITION_PARAM_SKILL_MELEEPERCENT
CONDITION_PARAM_SKILL_FISTPERCENT
CONDITION_PARAM_SKILL_CLUBPERCENT
CONDITION_PARAM_SKILL_SWORDPERCENT
CONDITION_PARAM_SKILL_AXEPERCENT
CONDITION_PARAM_SKILL_DISTANCEPERCENT
CONDITION_PARAM_SKILL_SHIELDPERCENT
CONDITION_PARAM_SKILL_FISHINGPERCENT
CONDITION_PARAM_BUFF_SPELL
CONDITION_PARAM_SUBID
CONDITION_PARAM_FIELD
]]
function getBonusCondition(fullOutfitCount)
    local finalBonus
    local higher = 0
    for outfitTier, bonus in pairs(outfitBonuses) do
        if fullOutfitCount > outfitTier and outfitTier > higher then
            higher = outfitTier
            finalBonus = bonus
        end
    end
    if finalBonus then
        return finalBonus
    else
        return nil
    end
end

function getAddonsAmount(pid)
    local player = Player(pid)
    local count = 0
    if not player then print("[Events::creature.lua::getAddonsAmount] Player not found.") return true end
    for i = 0, #outfitLook do
        if player:hasOutfit(outfitLook[i], 0) then
            count = count+1
        end
    end
    return count
end

local function removeCombatProtection(playerUid)
	local player = Player(playerUid)
	if not player then
		return true
	end

	local time = 0
	if player:isMage() then
		time = 10
	elseif player:isPaladin() then
		time = 20
	else
		time = 30
	end

	player:setStorageValue(Global.Storage.CombatProtectionStorage, 2)
	addEvent(function(playerFuncUid)
		local playerEvent = Player(playerFuncUid)
		if not playerEvent then
			return
		end 

		playerEvent:setStorageValue(Global.Storage.CombatProtectionStorage, 0)
		playerEvent:remove()
	end, time * 1000, playerUid)
end

function Creature:onTargetCombat(target)
	if not self then
		return true
	end

	if self and target then
        if self:isPlayer() then
--			print(target:getName())
            target:registerEvent("RESET_Damage___HealthChange")
            target:registerEvent("RESET_Damage___ManaChange")
        end
    end

	if target:isPlayer() then
		if self:isMonster() then
			local protectionStorage = target:getStorageValue(Global.Storage.CombatProtectionStorage)

			if target:getIp() == 0 then -- If player is disconnected, monster shall ignore to attack the player
				if target:isPzLocked() then
					return true
				end
				if protectionStorage <= 0 then
					addEvent(removeCombatProtection, 30 * 1000, target.uid)
					target:setStorageValue(Global.Storage.CombatProtectionStorage, 1)
				elseif protectionStorage == 1 then
					self:searchTarget()
					return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
				end

				return true
			end

			if protectionStorage >= os.time() then
				return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
			end
		end
	end

	if (target:isMonster() and self:isPlayer() and target:getMaster() == self) or (self:isMonster() and target:isPlayer() and self:getMaster() == target) then
		return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
	end

	if not IsRetroPVP() or PARTY_PROTECTION ~= 0 then
		if self:isPlayer() and target:isPlayer() then
			local party = self:getParty()
			if party then
				local targetParty = target:getParty()
				if targetParty and targetParty == party then
					return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
				end
			end
		end
	end

	if not IsRetroPVP() or ADVANCED_SECURE_MODE ~= 0 then
		if self:isPlayer() and target:isPlayer() then
			if self:hasSecureMode() then
				return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
			end
		end
	end

	self:addEventStamina(target)
	return true
end

function Creature:onChangeOutfit(outfit)
	if self:isPlayer() then
		local familiarLookType = self:getFamiliarLooktype()
		if familiarLookType ~= 0 then
			for _, summon in pairs(self:getSummons()) do
				if summon:getType():familiar() then
					if summon:getOutfit().lookType ~= familiarLookType then
						summon:setOutfit({ lookType = familiarLookType })
					end
					break
				end
			end
		end
	end
	return true
end

function Creature:onDrainHealth(attacker, typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary)
	if not self then
		return typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary
	end

	if not attacker then
		return typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary
	end

	return typePrimary, damagePrimary, typeSecondary, damageSecondary, colorPrimary, colorSecondary
end
