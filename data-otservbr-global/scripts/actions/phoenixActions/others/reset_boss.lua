local monsters = {
	[1] = {name = "Drume", storage = Storage.TheOrderOfTheLion.Drume.Timer},	
	[2] = {name = "Grand Master Oberon", storage = Storage.TheSecretLibrary.TheOrderOfTheFalcon.OberonTimer},
	[3] = {name = "Scarlett Etzel", storage = Storage.GraveDanger.CobraBastion.ScarlettTimer},	
	[4] = {name = "The Duke Of The Depths", storage = GlobalStorage.DangerousDepths.Geodes.WarzoneVI},		 
}
 
local onUse_item = 30200

local creaturescript = CreatureEvent("__modal_reset_boss")
function creaturescript.onModalWindow(player, modalWindowId, buttonId, choiceId)  
	player:unregisterEvent("__modal_reset_boss")
	if modalWindowId == 1000 then
		if buttonId == 100 then
			if not player:removeItem(onUse_item, 1) then 
				player:sendTextMessage(MESSAGE_INFO_DESCR, "O item precisa está no seu personagem para resetar o boss.")
				return true
			end
			
			local bosses_reseted = false
			for _, info in pairs(monsters) do
				if player:getStorageValue(info.storage) > os.time() then
					player:setStorageValue(info.storage, -1)
					bosses_reseted = true
				end
			end

			if bosses_reseted == true then
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Você acabou de resetar todos os bosses com sucesso!")
			else
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Os bosses foram resetados automaticamente.")
			end
		end
	end
end
creaturescript:register()

function Player.getListBosses(self)
	local title = "Lista de bosses"
	local message = "Ao clicar em resetar, todos os bosses dessa lista será resetado.."
	local window = ModalWindow(1000, title, message)

	local list = 0
	for index, monster in pairs(monsters) do
		if self:getStorageValue(monster.storage) > os.time() then
			list = list + 1
			window:addChoice(index, monster.name)
		end
	end

	if list > 0 then
		window:addButton(100, "Resetar")
		window:addButton(101, "Cancelar")

		window:setDefaultEnterButton(100)
		window:setDefaultEscapeButton(101)

		window:sendToPlayer(self)
	end
	return list
end

local action = Action()
function action.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	player:registerEvent("__modal_reset_boss")
	if player:getListBosses() == 0 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "A lista está vázia.")
	end
    return true
end
action:id(onUse_item)
action:register()