local BountyHunterOnKill = CreatureEvent("BountyHunterOnKill")
function BountyHunterOnKill.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified) 
    return onBountyHunterKill(killer, creature)
end
BountyHunterOnKill:register()