-- create table in database if one does not already exist
db.query("CREATE TABLE IF NOT EXISTS `PROCURADO` (`id` int(11) NOT NULL auto_increment, `hunter_id` int(11) NOT NULL, `target_id` int(11) NOT NULL, `killer_id` int(11) NOT NULL, `prize` bigint(20) NOT NULL, `currencyType` varchar(32) NOT NULL, `dateAdded` int(15) NOT NULL, `killed` int(11) NOT NULL, `dateKilled` int(15) NOT NULL, PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;")

--------------------------------------
---------- START OF CONFIG -----------
--------------------------------------
local customCurrency = 'gold token' -- by default bank balance and premium points are included but you can add other stackable currencies like gold nuggets etc here eg, 'gold nugget' or you can use the itemID or the item name
local config = {
    ipCheck = true, -- players from same IP can not place bounty on each other
    minLevelToAddBounty = 500, -- min lvl req to place a bounty
    minLevelToBeTargeted = 500, -- min lvl req to be targeted by a bounty
    broadcastKills = true, -- Should it broadcast a message to the whole game-world when someone was killed?
    broadcastHunt = true, -- Should it broadcast a message to the whole game-world when someone is added to the bounty list?
    mailbox_position = Position(32351,32223,6), -- If you are using a custom currency then we will send it to the players Mailbox, in order to do it you just need to put the location of one mailbox from your map here, doesn't matter which
    currencies = { 
        [customCurrency] = { 
            minAmount = 10, -- Min amount of custom item allowed
            maxAmount = 100, -- Max amount of custom item allowed
            func =
                function(player, prize, currency)
                    return player:sendParcel(prize)
                end,
            check =
                function(player, amount, currency)
                    local itemID = ItemType(customCurrency):getId()
                    if itemID > 0 and player:getItemCount(itemID) >= amount then
                        player:removeItem(itemID, amount)
                        return true
                    end
                    return false
                end,
        }
    }
}
--------------------------------------
----------- END OF CONFIG ------------
--------------------------------------
-- Only edit below if you know what you are doing --

local function trimString(str)
  return (str:gsub("^%s*(.-)%s*$", "%1"))
end

function Player:sendParcel(amount)
    local itemID = ItemType(customCurrency):getId()
    if itemID == 0 then
        print('Error in sending parcel. Custom currency was not set properly double check the spelling.')
        return
    end
    self:addItem(itemID, amount)
end

function Player:getBountyInfo()
    local result_plr = db.storeQuery("SELECT prize, id, currencyType FROM `PROCURADO` WHERE `target_id` = "..self:getGuid().." AND `killed` = 0;")
    if (result_plr == false) then
        return {false, 0, 0, 0, 0}
    end
    local prize = tonumber(result.getDataInt(result_plr, "prize"))
    local id = tonumber(result.getDataInt(result_plr, "id"))
    local bounty_type = tostring(result.getDataString(result_plr, "currencyType"))
    result.free(result_plr)
    return {true, prize, id, bounty_type, currency}
end

local function getExpForLevel(level)
	level = level - 1
	return ((50 * level * level * level) - (150 * level * level) + (400 * level)) / 3
end

function Player.setLevel(self, level)
    return self:addExperience(getExpForLevel(level) - self:getExperience())
end

local function addBountyKill(killer, target, prize, id, bounty_type, currency)
    if not config.currencies[bounty_type] then
        print('error in adding bounty prize')
        return true
    end
    config.currencies[bounty_type].func(killer, prize, currency)
    -- remover level baseado na quantidade de tokens oferecidos
    target:setLevel(target:getLevel()-(prize/10)) -- 10 tokens = 1 lvl
    local levelLoss = prize/10
    target:sendTextMessage(MESSAGE_STATUS_WARNING, "You lost " .. levelLoss .. " level for being hunted.")
    --
    db.query("UPDATE `PROCURADO` SET `killed` = 1, `killer_id`="..killer:getGuid()..", `dateKilled` = " .. os.time() .. " WHERE `id`  = "..id..";")
    killer:sendTextMessage(MESSAGE_EVENT_DEFAULT,'You killed ' .. target:getName() .. ' and received the reward of ' .. prize .. ' ' .. bounty_type .. 's!')
    if config.broadcastKills then
        Game.broadcastMessage("[WANTED]:\n " .. killer:getName() .. " killed " .. target:getName() .. " and received the reward of " .. prize .. " " .. bounty_type .. "!", MESSAGE_EVENT_ADVANCE)
    end
    return true
end

local function addBountyHunt(player, target, amount, currencyType)
    db.query("INSERT INTO `PROCURADO` VALUES (NULL," .. player:getGuid() .. "," .. target:getGuid() .. ",0," .. amount .. ", '" .. currencyType .. "', " .. os.time() .. ", 0, 0);")
    player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You placed a bounty on the head of " .. target:getName() .. " offering a reward " .. amount .. " " .. currencyType .. "!")
    if config.broadcastHunt then
        Game.broadcastMessage("[WANTED]\n " .. player:getName() .. " is paying " .. amount .. " " .. currencyType ..  " through the head of " .. target:getName() .. ".", MESSAGE_EVENT_ADVANCE)
    end
return false
end

function onBountyHunterSay(player, words, param)
    if player:getLevel() < config.minLevelToAddBounty then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You need to have level ' .. config.minLevelToAddBounty .. ' or greater to place rewards.')
        return false
    end
    local t = param:split(",")
    local name = t[1] 
    local currencyType = t[2] and trimString(t[2]) or nil
    local amount = t[3] and tonumber(t[3]) or nil

    if not (name and currencyType and amount) or not param then
        local item = ItemType(customCurrency)
        local text = '[GUIDE WANTED]\n\nCommands:\n!hunt playerName, gold token, amount' .. '\n\n' .. 'Example:\n' .. '--> !hunt GM Toony, gold token,10-20\n' .. '--> Place a bounty on GM Toony head for 10-20 gold tokens.'
        player:popupFYI(text)
        return false
    end

    local target = Player(name) 
    if not target then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, '' .. name .. ' it s not online.')
    return false
    end

    if target:getGuid() == player:getGuid() then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'It is not allowed to put a reward on yourself!')
    return false
    end

    if config.ipCheck and target:getIp() == player:getIp() then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You cannot place a bounty on players with the same IP!')
    return false
    end

    if target:getLevel() < config.minLevelToBeTargeted then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You can only place rewards for players ' .. config.minLevelToBeTargeted .. ' or greater!')
    return false
    end

    local info = target:getBountyInfo()
    if info[1] then
        player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "This player is already being sought.")
        return false
    end

    local typ = config.currencies[currencyType]
    if not typ then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'Only GOLD TOKEN can be offered as a reward.')
    return false
    end

    local minA, maxA = typ.minAmount, typ.maxAmount
    if amount < minA or amount > maxA then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You must enter a value of "' .. currencyType .. '" in between ' .. minA .. ' --> ' .. maxA .. '.')
    return false
    end

    if not typ.check(player, amount, currencyType) then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You do not have ' .. currencyType .. ' enough.')
    return false
    end

    return addBountyHunt(player, target, amount, currencyType)
end

function onBountyHunterKill(creature, target)
    if not target:isPlayer() then
        return true
    end

    if creature:getTile():hasFlag(TILESTATE_PVPZONE) then
        return true
    end

    local info = target:getBountyInfo()
    if not info[1] then
        return true
    end
    -- killer, target, prize, id, bounty_type, currency
    return addBountyKill(creature, target, info[2], info[3], info[4], info[5])
end