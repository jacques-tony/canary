local storage = 4455
local cure_percentage = 50 -- 20%

local healthChange = CreatureEvent("PERCENTAGE___HealthChange")
function healthChange.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker then
        return primaryDamage, primaryType, secondaryDamage, secondaryType 
    end

    if primaryType == COMBAT_HEALING then
        if attacker:getStorageValue(storage) == 1 then
            primaryDamage = math.abs(primaryDamage) + math.floor(math.abs(primaryDamage) * cure_percentage / 100)
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
healthChange:register()

local login = CreatureEvent('PERCENTAGE___Login')
function login.onLogin(player)
    player:registerEvent("PERCENTAGE___HealthChange")
    return true
end
login:register()