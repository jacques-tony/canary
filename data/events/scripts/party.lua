function Party:onJoin(player)
    local playerUid = player:getGuid()
    addEvent(function(playerFuncUid)
        local playerEvent = Player(playerFuncUid)
        if not playerEvent then
            return
        end
        local party = playerEvent:getParty()
        if not party then
            return
        end
        party:refreshHazard()
    end, 100, playerUid)
    return true
end

function Party:onLeave(player)
    local playerUid = player:getGuid()
    local members = self:getMembers()
    table.insert(members, self:getLeader())
    local memberUids = {}
    for _, member in ipairs(members) do
        if member:getGuid() ~= playerUid then
            table.insert(memberUids, member:getGuid())
        end
    end

    addEvent(function(playerFuncUid, memberUidsTableEvent)
        local playerEvent = Player(playerFuncUid)
        if playerEvent then
            playerEvent:updateHazard()
        end

        for _, memberUid in ipairs(memberUidsTableEvent) do
            local member = Player(memberUid)
            if member then
                local party = member:getParty()
                if party then
                    party:refreshHazard()
                    return -- Somente um jogador precisa atualizar o perigo para o grupo
                end
            end
        end
    end, 100, playerUid, memberUids)
    return true
end

function Party:onDisband()
    local members = self:getMembers()
    table.insert(members, self:getLeader())
    local memberIds = {}
    for _, member in ipairs(members) do
        if member:getId() ~= playerId then
            table.insert(memberIds, member:getId())
        end
    end
    addEvent(function()
        for _, memberId in ipairs(memberIds) do
            local member = Player(memberId)
            if member then
                member:updateHazard()
            end
        end
    end, 100)
    return true
end

function Party:onShareExperience(exp)
    -- Configuração do multiplicador de experiência compartilhada
    local sharedExperienceMultiplier = 1.0 -- 100%

    -- Lista de vocações dos membros para evitar contar membros com a mesma vocação
    local vocationsIds = {}

    -- Adiciona a vocação do líder à lista
    local vocationId = self:getLeader():getVocation():getBase():getId()
    if vocationId ~= VOCATION_NONE then
        table.insert(vocationsIds, vocationId)
    end

    -- Adiciona as vocações dos membros à lista, evitando duplicatas
    for _, member in ipairs(self:getMembers()) do
        vocationId = member:getVocation():getBase():getId()
        if not table.contains(vocationsIds, vocationId) and vocationId ~= VOCATION_NONE then
            table.insert(vocationsIds, vocationId)
        end
    end

    -- Calcula o número total de membros na party (limitado a 4 membros, incluindo o líder)
    local size = math.min(#self:getMembers() + 1, 4) -- Limita a contagem a 5 membros, incluindo o líder

    -- Calcula o bônus de experiência para membros adicionais (limitado a 15% para 4 membros)
    local bonusMultiplier = (size > 1) and (size - 1) * 0.05 or 0
    local limitedBonusMultiplier = math.min(bonusMultiplier, 0.20) -- Limita o bônus a 15%

    -- Calcula o multiplicador total
    local multiplier = 1.0 + limitedBonusMultiplier

    -- Calcula o total de experiência compartilhada
    local totalExp = exp * sharedExperienceMultiplier * multiplier

    -- Arredonda para cima e retorna o total de experiência
    return math.ceil(totalExp)
end