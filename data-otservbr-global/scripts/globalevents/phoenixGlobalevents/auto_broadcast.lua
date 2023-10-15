local AutoBroadCast = GlobalEvent("text")
function AutoBroadCast.onThink(interval, lastExecution)
    local messages = {

    "[TOKENS]: Gold, Silver and Copper Tokens are obtained from all bosses.",	
    "[INFO]: To remove spells on the screen: Settings > Interface > Game Windows > Uncheck the option: Show Spells.",
    "[BOSSES]: Lever bosses such as: Oberon, Scarlett Etzel, Obujos and others, are released after 10 hours when defeated.",
    "[ATTENTION]: For every hour online on the hunting server, you will earn 1 online Token to be used in the store in the online shop tab.",
    "[PREMIUM] Become a premium account and have exclusive benefits. See our benefits on our website or open the Store tab in Premium Time.",	
	"[SYSTEM]: The server's global save occurs every day at 06:00.",
    "[SECURITY]: Protect your password. Only use it on our official website: https://www.phoenixot.com.br",	
	"[LOOT]: Now it is possible to see any loot from any monster by saying !loot + monster name.",
	"[FAST ATTACK]: Train your Fist Fighting to increase your attack speed.",
	"[COMMANDS]: Use our quick commands so you don't have to leave the hunt, !aol, !food and !bp, !tools, !bless.",
	"[ADDONS]: Outfits and Addons can be obtained by exploring the map. The more outfits you have, the bigger the bonus!",
	"[BOSS TIME] Use the !boss {name} command to find out the remaining time to kill the boss again.",
    "[COMMANDS]: Type !commands to see all commands available on the server.",
	"[PARTY]: Type !share to see what level you can share exp in the party with.",
	

	
}
    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_DEFAULT) 
    return true
end
AutoBroadCast:interval(900000) 
AutoBroadCast:register() 