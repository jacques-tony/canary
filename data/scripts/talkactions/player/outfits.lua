local talk = TalkAction("!outfits")

function getAddonsAmount(pid)
    local player = Player(pid)
    local count = 0
    if not player then print("[Events::creature.lua::getAddonsAmount] Player not found.") return true end
    for i = 0, #outfitLook do
        if player:hasOutfit(outfitLook[i], 3) then
            count = count+1
        end
    end
    return count
end

function talk.onSay(player, words, param)
		player:popupFYI("Voce tem atualmente " .. getAddonsAmount(player) .. " outfits full.")
	return true
end

talk:separator(" ")
talk:groupType("normal") 
talk:register()