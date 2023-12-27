
--[[
    --------------------------------------------------------------------------
                                INSTALAÇÃO!
            TABELAS E COLUNAS A SEREM ADICIONADAS AO BANCO DE DADOS
    --------------------------------------------------------------------------
	ALTER TABLE `players` ADD `daily_experience` int(11) NOT NULL DEFAULT '0';
	ALTER TABLE `players` ADD `weekly_experience` int(11) NOT NULL DEFAULT '0';
	ALTER TABLE `players` ADD `biweekly_experience` int(11) NOT NULL DEFAULT '0';
	ALTER TABLE `players` ADD `monthly_experience` int(11) NOT NULL DEFAULT '0';
    ALTER TABLE `players` ADD `last_dwbm_experience` int(11) NOT NULL DEFAULT '0';

	CREATE TABLE IF NOT EXISTS `dwbm_experience_history` (
		`id` int(11) NOT NULL AUTO_INCREMENT,
		`player_id` int(11) NOT NULL,
		`dwbm_tag` varchar(30) NOT NULL,
		`experience` int(11) NOT NULL,
        `reward` text NOT NULL,
		`time_ends_at` int(11) NOT NULL,
		PRIMARY KEY (`id`)
	);

    CREATE TABLE IF NOT EXISTS `dwbm_experience` (
		`dwbm_tag` varchar(30) NOT NULL,
		`time_started_at` int(11) NOT NULL,
		PRIMARY KEY (`dwbm_tag`)
	);
    --------------------------------------------------------------------------
            EM: canary/data/events/scripts/player.lua
            PROCURAR POR: self:setStoreXpBoost(storeXpBoostAmount)
            E ADICIONAR LOGO ABAIXO:
            self:setAllDWBMExperience(exp)
            self:setLastDWBMExperience(exp)
    --------------------------------------------------------------------------
]]--

__configDWBM = {
    ["daily_experience"] = {
        time = 1 * 24 * 60 * 60,           -- Tempo em segundos para a tag de experi?ncia di?ria (1 dia)
        { item = 14758, count = 1 },      -- Item e quantidade para a experi?ncia di?ria
        { item = 3043, count = 100 }
    },
    ["weekly_experience"] = {
        time = 7 * 24 * 60 * 60,          -- Tempo em segundos para a tag de experi?ncia semanal (7 dias)
        { item = 14758, count = 1 },      -- Item e quantidade para a experi?ncia di?ria
        { item = 3043, count = 100 }
    },
    ["biweekly_experience"] = {
        time = 15 * 24 * 60 * 60,         -- Tempo em segundos para a tag de experi?ncia quinzenal (15 dias)
        { item = 14758, count = 1 },      -- Item e quantidade para a experi?ncia di?ria
        { item = 3043, count = 100 }
    },
    ["monthly_experience"] = {
        time = 30 * 24 * 60 * 60,         -- Tempo em segundos para a tag de experi?ncia mensal (30 dias)
        { item = 14758, count = 1 },      -- Item e quantidade para a experi?ncia di?ria
        { item = 3043, count = 100 }
    }
}

function Player.getDWBMExperience(self, column)
    local selectQuery = db.storeQuery(string.format("SELECT %s FROM `players` WHERE `id` = %d", column, self:getGuid()))
    if selectQuery then
        local info = result.getNumber(selectQuery, column)
        result.free(selectQuery)
        return info
    end
end

function Player.setDWBMExperience(self, column, experience)
    local updateQuery = string.format("UPDATE `players` SET %s = %s + %d WHERE `id` = %d", column, column, experience, self:getGuid())
    db.query(updateQuery)
	return true
end

function Player.setAllDWBMExperience(self, experience)
    local experienceKeys = { "daily_experience", "weekly_experience", "biweekly_experience", "monthly_experience" }
    for _, key in ipairs(experienceKeys) do
        self:setDWBMExperience(key, experience)
    end
    return true
end

function Player.getLastDWBMExperience(self)
    local selectQuery = db.storeQuery(string.format("SELECT `last_dwbm_experience` FROM `players` WHERE `id` = %d", self:getGuid()))
    if selectQuery then
        local info = result.getNumber(selectQuery, "last_dwbm_experience")
        result.free(selectQuery)
        return info
    end
end

function Player.setLastDWBMExperience(self, last_dwbm_experience)
    local updateQuery = string.format("UPDATE `players` SET `last_dwbm_experience` = %d WHERE `id` = %d", last_dwbm_experience, self:getGuid())
    db.query(updateQuery)
	return true
end

function getDWBMTime(where_column)
    local selectQuery = db.storeQuery(string.format("SELECT `time_started_at` FROM `dwbm_experience` WHERE `dwbm_tag` = %s", db.escapeString(where_column)))
    if selectQuery then
        local info = result.getNumber(selectQuery, "time_started_at")
        result.free(selectQuery)
        return info
    end
end

function updateDWBM(dwbm_tag, time_started_at)
    local updateQuery1 = string.format("UPDATE `dwbm_experience` SET `time_started_at` = %d WHERE `dwbm_tag` = %s", os.time() + time_started_at, db.escapeString(dwbm_tag))
    db.query(updateQuery1)

    local updateQuery2 = string.format("UPDATE `players` SET %s = %d", dwbm_tag, 0)
    db.query(updateQuery2)
end

function startDWBM(tag, time_started_at)
    local insertQuery = string.format("INSERT INTO `dwbm_experience` (`dwbm_tag`, `time_started_at`) VALUES (%s, %d)", db.escapeString(tag), os.time() + time_started_at)
    db.query(insertQuery)
end

function addInboxWinnerReward(player_id, item, count)
    local query = "SELECT COALESCE(MAX(`sid`), 100) as max_sid FROM `player_inboxitems` WHERE `player_id` = ".. player_id ..";"
    local selectQuery = db.storeQuery(query)

    local sid = result.getNumber(selectQuery, "max_sid") + 1

    local insertQuery = string.format("INSERT INTO `player_inboxitems` (`player_id`, `sid`, `itemtype`, `count`, `attributes`) VALUES (%d, %d, %d, %d, %q)", player_id, sid, item, count, '')
    db.query(insertQuery)
end

function addDWBMHistory(player_id, dwbm_tag, experience, reward, time_ends_at)
    local insertQuery = string.format("INSERT INTO `dwbm_experience_history` (`player_id`, `dwbm_tag`, `experience`, `reward`, `time_ends_at`) VALUES (%d, %s, %d, %s, %d)", player_id, db.escapeString(dwbm_tag), experience, db.escapeString(reward), time_ends_at)
    db.query(insertQuery)
end

function addWinnerReward(target)
    return __configDWBM[target] or {}
end

function getCurrentDateTime(currentTime)
    local formattedDateTime = os.date("%d/%m/%Y ?s %H:%M:%S", currentTime)
    return formattedDateTime
end

function checkDWBM(tag, time)
    local currentTimestamp = os.time()
    local time_started_at = getDWBMTime(tag)

    if time_started_at > currentTimestamp then
        return true
    end

    local dwbm = __configDWBM[tag]
    local formattedTag = tag:gsub("_%w", string.upper):gsub("_", " "):upper()

    local query = string.format("SELECT `name`, `id`, %s FROM `players` WHERE %s = (SELECT MAX(%s) FROM `players`);", tag, tag, tag)
    local selectQuery = db.storeQuery(query)

    if not selectQuery then
        return true
    end

    local player_id = result.getNumber(selectQuery, "id")
    local playerName = result.getString(selectQuery, "name")
    local experience = result.getNumber(selectQuery, tag)

    local itemsData = {}
    local items = addWinnerReward(tag)

    if experience > 0 then
        for _, item in ipairs(items) do
            local player = Player(playerName)
            if player then
                local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
                if inbox and inbox:getEmptySlots() > 0 then
                    inbox:addItem(item.item, item.count)
                end
            else
                addInboxWinnerReward(player_id, item.item, item.count)
            end
            table.insert(itemsData, string.format("{%d, %d}", item.item, item.count))
        end

        local reward = table.concat(itemsData, ", ")
        addDWBMHistory(player_id, tag, experience, reward, os.time())
    end

    updateDWBM(tag, dwbm.time)
    local entryTime = os.time() + dwbm.time

    local message = string.format(
        "* [%s] *\n%s%s com a maior experi?ncia acumulada.\n\n* [%s] *\n-- Reiniciando novamente --\nPr?ximo resultado: %s",
        formattedTag,
        experience > 0 and playerName .. " foi o vencedor" or "N?o houve vencedor",
        experience and " " or "",
        formattedTag,
        getCurrentDateTime(entryTime)
    )

    Game.broadcastMessage(message, MESSAGE_INFO_DESCR)
end

function initializeDWBM()
    local dbQuery = db.storeQuery("SELECT COUNT(*) AS count FROM `dwbm_experience`")
    if result.getNumber(dbQuery, "count") == 0 then
        for dwbm, entry in pairs(__configDWBM) do
            startDWBM(dwbm, entry.time)
        end
    end
    result.free(dbQuery)
end