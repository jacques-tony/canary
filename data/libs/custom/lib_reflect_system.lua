reflect_system = {
    stones = {
        [31354] = {chance_to_fail = 10}, -- 10% blue
        [31355] = {chance_to_fail = 20}, -- 20% purpple  
        [31356] = {chance_to_fail = 30}, -- 30% green 
    },

    increase_reflect = 1.00, -- Adiciona +0.10% em cada pedra usada.  
    limit_stones = 100, -- Limite de pedras a serem usadas.
    storage = 54564, -- Storage. 
    reflect_damage_color = 1, -- A cor do dano ao ser refletido no personagem ou monstro.
    reflect_chance = 20 -- 30% de chance de refletir.
}

function Player.getReflectLevel(self)
    local value = self:getStorageValue(reflect_system.storage)
    if value == -1 then
        return 0
    end
    return value
end

function Player.setReflectLevel(self, value)
	return self:setStorageValue(reflect_system.storage, value)
end 