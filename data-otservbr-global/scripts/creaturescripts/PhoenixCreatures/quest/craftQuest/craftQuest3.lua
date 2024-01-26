local craftQuest3 = CreatureEvent("craftQuest3")

function craftQuest3.onDeath(cid, corpse, killer) 

local M ={
 ["World Devourer"] = {Pos = {x=18461, y=18276, z=14},id= 6406 ,time = 60},
}

local x = M[getCreatureName(cid)]
function criar() 
        local parede = getTileItemById(x.Pos, x.id) 
        doCreateItem(x.id, 1, x.Pos) 
        end
if x then
        local parede = getTileItemById(x.Pos, x.id) 
        if parede then 
                doRemoveItem(parede.uid, 1) 
                 doCreatureSay(cid, "A parede Será criada Novamente em "..x.time.." segundos.", TALKTYPE_ORANGE_1) 
                addEvent(criar, x.time*1000) 
        end 
end
return TRUE 
end

craftQuest3:register()