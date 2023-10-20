local raids = {
    'GrandChaplainGaunder',
}

local worldBossSchedule = GlobalEvent("worldBossSchedule")
function worldBossSchedule.onThink(interval, lastExecution)
    Game.startRaid(raids[math.random(1,#raids)])
    return true
end
worldBossSchedule:interval(60 * 60 * 60 * 60) -- spawns every 30 minutos 
worldBossSchedule:register()