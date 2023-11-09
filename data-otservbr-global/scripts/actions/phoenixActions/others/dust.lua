local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
  if not player then
--    print("Error: Player is nil.")
    return false
  end

  local dustAmount = 10  -- Quantidade padrão de poeira a ser adicionada
  local targetPlayer = player  -- Pode ser ajustado para ser o jogador alvo, se necessário

  -- Verificações adicionais podem ser feitas aqui, dependendo dos requisitos do seu sistema

  -- Check dust level
  local finalDustAmount = targetPlayer:getForgeDusts() + dustAmount
  if finalDustAmount > targetPlayer:getForgeDustLevel() then
    dustAmount = targetPlayer:getForgeDustLevel() - targetPlayer:getForgeDusts()
  end

  targetPlayer:addForgeDusts(dustAmount)
  player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You added %d dusts.", dustAmount))
  -- Distro log
--  logger.info("{} adicionou {} dusts.", player:getName(), dustAmount)
  
  item:remove(1)
  return true
end


dust:id(21746)
dust:register()
