local talk = TalkAction("!boss")
local bosses = {
	["Drume"] = {storage = Storage.TheOrderOfTheLion.Drume.Timer},	
	["Grand Master Oberon"] = {storage = Storage.TheSecretLibrary.TheOrderOfTheFalcon.OberonTimer},
	["Scarlett Etzel"] = {storage = Storage.GraveDanger.CobraBastion.ScarlettTimer},	
	["The Duke Of The Depths"] = {storage = GlobalStorage.DangerousDepths.Geodes.WarzoneVI},	
	
}

function talk.onSay(player, words, param)
	local msg = "\t***** Boss Checker *****\n\n"
	for k, v in pairs(bosses) do
		local timer = player:getStorageValue(v.storage)
		if timer > os.time() then
			msg = msg .. k:upper() .. ": \ta partir das: " .. os.date("%X", timer) .. "\n"
		else
			msg = msg .. k:upper() .. ": \tliberado.\n"
		end
	end
	player:popupFYI(msg)
	--[[local boss = config[param:lower()]
	if not boss then
		player:popupFYI("Um boss com esse nome nao existe.")
		return false
	end
	local timer = player:getStorageValue(boss.storage)

	if (timer > os.time()) then
		player:popupFYI("Voce podera enfrentar " .. param:upper() .. " a partir das: " .. os.date("%X", timer) .. ".\nHora atual: " .. os.date("%X", os.time()) .. ".")
	else
		player:popupFYI("Voce ja pode enfrentar " .. param:upper() ..".")
	end]]
	return true
end

talk:separator(" ")
talk:groupType("normal")
talk:register()