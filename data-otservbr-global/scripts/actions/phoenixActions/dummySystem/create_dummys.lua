local config_dummys = {
    dummyid = 44461, dummy_time = 10, -- 10 segundos.
    create_dummys = 2, -- 3 dummys.
    -- Posições dos dommys.
    position = { -- 4 posições, é preciso ter mais que o valor do create_dummys. No caso seria 200 posições e 25 no create_dummys.
        Position(17563, 17571, 6),
        Position(17565, 17571, 6),
        Position(17567, 17571, 6),
        Position(17569, 17571, 6)
    }
}

local outfits = {
    {136, 128, "Citizen"},
    {137, 129, "Hunter"},
}

-- Verificar se a posição está ocupada por um dummy.
local function isPositionOccupied(position)
    local tile = Tile(position)
    local items = tile:getItems()
    
    for _, item in ipairs(items) do
        if item:getId() == config_dummys.dummyid then
            return true
        end
    end
    return false
end

-- Procura por uma posição disponível.
local function findAvailablePosition()
    local random_position
    repeat random_position = config_dummys.position[math.random(#config_dummys.position)] until not isPositionOccupied(random_position)
    return random_position
end

local function updateDummys() -- Atualizar o update, o dummy nascerá novamente após determinado tempo.
    addEvent(function()
        local position = findAvailablePosition()
        Game.createItem(config_dummys.dummyid, 1, position)
        position:sendMagicEffect(CONST_ME_POFF) 
        Game.broadcastMessage("A dummy just appeared on the map.", MESSAGE_EVENT_ADVANCE)

    end, config_dummys.dummy_time * 1000, position)
end

if #config_dummys.position >= config_dummys.create_dummys then
    local action = Action()
    function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
        if item.itemid == config_dummys.dummyid then
            local addon = 3
            local outfit = outfits[math.random(1, #outfits)]
            if player:hasOutfit(outfit[1], addon) or player:hasOutfit(outfit[2], addon) then
                player:sendCancelMessage("There are no outfits to be received.")
                return true
            end

            player:addOutfitAddon(outfit[1], addon)
            player:addOutfitAddon(outfit[2], addon)
            Game.broadcastMessage(string.format("Player %s received the %s outfit full.", player:getName(), outfit[3]), MESSAGE_EVENT_ADVANCE)
            item:remove(1)
            updateDummys()
        end
        return true
    end
    action:id(config_dummys.dummyid)
    action:register()

    local globalevent = GlobalEvent("__create_dummys")
    function globalevent.onStartup()
        local dummy_positions = {}
        for i = 1, config_dummys.create_dummys do 
            local random_position = config_dummys.position[math.random(#config_dummys.position)]

            while table.contains(dummy_positions, random_position) do
                random_position = config_dummys.position[math.random(#config_dummys.position)]
            end

            table.insert(dummy_positions, random_position)
            Game.createItem(config_dummys.dummyid, 1, random_position)
        end
    end
    globalevent:register()
else
    print("[CREATE DUMMYS]: Houve um problema, há ".. #config_dummys.position .." posições para ".. config_dummys.create_dummys .." dummys, deve haver mais posições que dummys, então adicione mais posições.")
end