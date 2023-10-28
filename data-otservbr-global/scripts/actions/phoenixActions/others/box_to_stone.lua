local save_time, runtime = 0, 10
local stone, box, actionid = 27504, 27508, 34561 

local action = Action()
function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local tile = Tile(toPosition)
	if not tile then
		player:sendCancelMessage("This item can only be used on the ground.")
		return true
	end

	if os.time() < save_time then
		player:sendCancelMessage("Wait ".. string.diff(save_time - os.time()) .. " to use again..")
		return true
	end

	local house = tile:getHouse()
	if house then 
		save_time = os.time() + runtime
		item:transform(item.itemid == stone and box or stone)
		toPosition:sendMagicEffect(item.itemid == stone and CONST_ME_FIREAREA or CONST_ME_POFF)
		if item.itemid == stone then
			item:setAttribute(ITEM_ATTRIBUTE_ACTIONID, actionid)
		else
			item:removeAttribute(ITEM_ATTRIBUTE_ACTIONID)
		end
	else
		player:sendCancelMessage("This item can only be used inside a house.")
	end
	return true
end
action:id(stone, box)
action:register()
