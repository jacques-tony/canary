function getOwnsCastle(self)
    local selectQuery = db.storeQuery(string.format("SELECT `id`, `owns_castle` FROM `guilds` WHERE `id` = %d AND `owns_castle` = %d", self:getGuild():getId(), 1))
    if selectQuery then
        local info = result.getNumber(selectQuery, "id")
        result.free(selectQuery)
        return info
    end
end