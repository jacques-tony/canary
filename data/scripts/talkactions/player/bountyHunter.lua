local bountyHunter = TalkAction("!hunt")

function bountyHunter.onSay(player, words, param)
    return onBountyHunterSay(player, words, param)
end

bountyHunter:separator(" ") 
bountyHunter:groupType("normal")
bountyHunter:register() 