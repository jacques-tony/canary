local BountyHunterOnKill = CreatureEvent("BountyHunterOnKill")
function BountyHunterOnKill.onKill(player, target)
    return onBountyHunterKill(player, target)
end

BountyHunterOnKill:register()  