configMining = {
	msg = {
		naoLocal = "Voce nao pode minerar aqui.",
		naoPick = "Voce consegue minerar somente com pick.",
		minerouWin = "Voce ganhou uma %s.",
		dano = "As pedras desabaram e voce levou um hit.",
		fail = "Falha!",
		upNivel = "Voce subiu de nivel na mineracao! Agora voce e  %s. Parabens!",
		usarEspecial = true,
		especial = "[PREMIUM]",
	},
	level = {
		active = true,
		storageTentativas = 81056,
		storageNivel = 81057,
		[1] = {name = "Iniciante", qntMin = 0, qntMax = 999},				
		[2] = {name = "Intermediario", qntMin = 1000, qntMax = 1999},			
		[3] = {name = "Avancado", qntMin = 2000, qntMax = 2999},				
		[4] = {name = "Experiente", qntMin = 3000, qntMax = 3999},
		[5] = {name = "Profissional", qntMin = 4000, qntMax = 10000000000000},
		[6] = {name = "Profissional God", qntMin = 10000000000001},			 	
	},
	itens = {	
		{itemid = 3029, chancePickNormal = 0.02, chancePickEspecial = 0.05}, -- small sapphire
		{itemid = 3033, chancePickNormal = 0.02, chancePickEspecial = 0.05}, -- small amethyst
		{itemid = 9057, chancePickNormal = 0.02, chancePickEspecial = 0.05}, -- small topazes
		{itemid = 3028, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- Small Diamond
		{itemid = 3032, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- Small Emerald	
		
		{itemid = 3030, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- Small Ruby			
		{itemid = 3041, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- blue gem
		{itemid = 3038, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- green gem
		{itemid = 3039, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- red gem
		{itemid = 3036, chancePickNormal = 0.01, chancePickEspecial = 0.04}, -- violet gem	
		{itemid = 16167, chancePickNormal = 0.03, chancePickEspecial = 0.06, level = true, nivelMin = 3}, -- teleport crystal
		{itemid = 16242, chancePickNormal = 0.02, chancePickEspecial = 0.04, level = true, nivelMin = 5}, -- red teleport crystal
	}, 
	hit = {
		active = true,
		danoMin = 100, 
		danoMax = 1000, 
		chance = 0.1,
	},
	idPick = 4845, 
	idPickEspecial = 32711,
	actionIdPedras = 34561,
}