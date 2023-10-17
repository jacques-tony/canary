local monsters = {
    [1] = { name = "Drume", storage = Storage.TheOrderOfTheLion.Drume.Timer },
    [2] = { name = "Grand Master Oberon", storage = Storage.TheSecretLibrary.TheOrderOfTheFalcon.OberonTimer },
    [3] = { name = "Scarlett Etzel", storage = Storage.GraveDanger.CobraBastion.ScarlettTimer },
    [4] = { name = "Gnomevil", storage = 376355 },
    [5] = { name = "abyssador", storage = 376353 },  
    [6] = { name = "Deathstrike", storage = 376352 },
    [7] = { name = "Mazoran", storage = Storage.FerumbrasAscension.MazoranTimer },	
    [8] = { name = "Kroazur", storage = 376356 },		
}

local onUse_item = 30200 

function Player.resetBosses(self)
    local bosses_reseted = false

    for _, info in pairs(monsters) do
        if self:getStorageValue(info.storage) > os.time() then
            self:setStorageValue(info.storage, -1)
            bosses_reseted = true
        end
    end

    if bosses_reseted then
        self:sendTextMessage(MESSAGE_INFO_DESCR, "You have just successfully reset all bosses!")
    else
        self:sendTextMessage(MESSAGE_INFO_DESCR, "Bosses have been automatically reset.")
    end
end

local action = Action()
function action.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    local hasBossesToReset = false
    for _, info in pairs(monsters) do
        if player:getStorageValue(info.storage) > os.time() then
            hasBossesToReset = true
            break
        end
    end

    if hasBossesToReset then
        if not player:removeItem(onUse_item, 1) then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "The item needs to be on your character to reset the boss.")
        else
            player:resetBosses()
        end
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have any bosses to reset at the moment.")
    end

    return true
end
action:id(onUse_item)
action:register()
