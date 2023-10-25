local config = {
	-- Window Config
	mainTitleMsg = "Crafting System", -- Main window title
	mainMsg = "Welcome to the crafting system. Please choose a vocation to begin.", -- Main window message
 
	craftTitle = "Crafting System: ", -- Title of the crafting screen after player picks of vocation
	craftMsg = "Here is a list of all items that can be crafted for the ", -- Message on the crafting screen after player picks of vocation
	-- End Window Config
 
	-- Player Notifications Config
	needItems = "You do not have all the required items to make ", -- This is the message the player recieves if he does not have all required items
 
	-- Crafting Config
	system = {
	[1] = {vocation = "PHOENIX WEAPONS", -- This is the category can be anything.
		resets = 0, -- Quantidade de resets para poder abrir a janela. 
		items = {
			[1] = {item = "Phoenix Sword", -- phoenix sword
				itemID = 43864, -- item to be made
				reqItems = { -- items and the amounts in order to craft.
					[1] = {item = 28723, count = 1}, -- Falcon Longsword
					[2] = {item = 30398, count = 1}, -- Cobra Sword
					[3] = {item = 34155, count = 1}, -- Lion Longsword
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell 
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell								
				},
			},
			
			[2] = {item = "Phoenix Axe",   -- phoenix axe
				itemID = 43868,
				reqItems = {
					[1] = {item = 28724, count = 1}, -- Falcon Axe
					[2] = {item = 30396, count = 1}, -- Cobra Axe
					[3] = {item = 34253, count = 1}, -- Lion Axe
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell								
				},
			},

			[3] = {item = "Phoenix Club", -- phoenix club
				itemID = 43866,
				reqItems = {
					[1] = {item = 28725, count = 1}, -- Falcon Mace
					[2] = {item = 30395, count = 1}, -- Cobra Club
					[3] = {item = 34254, count = 1}, -- Lion Hammer
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
				},
			},

			[4] = {item = "Phoenix Bow", -- phoenix bow
				itemID = 43877,
				reqItems = {
					[1] = {item = 28718, count = 1}, -- Falcon Bow
					[2] = {item = 30393, count = 1}, -- Cobra Crossbow
					[3] = {item = 34150, count = 1}, -- Lion Longbow
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	 
				},
			},

			[5] = {item = "Phoenix Crossbow", -- phoenix crossbow
				itemID = 43879,
				reqItems = {
					[1] = {item = 28718, count = 1}, -- Falcon Bow
					[2] = {item = 30393, count = 1}, -- Cobra Crossbow
					[3] = {item = 34150, count = 1}, -- Lion Longbow
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	 
				},
			},

			[6] = {item = "Phoenix Rod", -- phoenix rod
				itemID = 43885,
				reqItems = {
					[1] = {item = 28716, count = 1}, -- Falcon Rod
					[2] = {item = 30400, count = 1}, -- Cobra Rod
					[3] = {item = 34151, count = 1}, -- Lion rod
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	 
				},
			},
			 
			[7] = {item = "Phoenix wand", -- phoenix wand
				itemID = 43882, 
				reqItems = {
					[1] = {item = 28717, count = 1}, -- Falcon Wand
					[2] = {item = 30399, count = 1}, -- Cobra Wand
					[3] = {item = 34152, count = 1}, -- Lion Wand
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	 					
					
				},
			},
		}, 
	},
 
	[2] = {vocation= "PHOENIX | DRUID/SORCERER", 
		resets = 0, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Rod of Destruction",
				itemID = 27458,
				reqItems = {
					[1] = {item = 27647, count = 1}, -- Gnome Helmet
					[2] = {item = 3387, count = 1}, -- Demon Helmet
					[3] = {item = 16104, count = 1}, -- Gill gugel
					[4] = {item = 28714, count = 1}, -- Falcon Circlet
					[5] = {item = 31582, count = 1}, -- Galea Mortis
					[6] = {item = 22757, count = 1}, -- Shroud of Despair
			        [7] = {item = 16167, count = 200}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24954, count = 1}, -- Runa I (Boss Thais)				
			    },
			},

			[2] = {item = "Knowledgeable Book",
				itemID = 27934,
				reqItems = {
					[1] = {item = 27648, count = 1}, -- Gnome armor
					[2] = {item = 11687, count = 1}, -- Royal Scale Robe
					[3] = {item = 16105, count = 1}, -- Gill gugel
					[4] = {item = 28719, count = 1}, -- Falcon plate 
					[5] = {item = 31578, count = 1}, -- Bear Skin
					[6] = {item = 25779, count = 1}, -- Swan Feather Cloak 
			        [7] = {item = 16167, count = 200}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24955, count = 1}, -- Runa II (Boss Thais)
				},
			},

			[3] = {item = "Frostmind Raiment",
				itemID = 22537,
				reqItems = {
					[1] = {item = 27649, count = 1}, -- Gnome legs
					[2] = {item = 3389, count = 1}, -- Demon Legs
					[3] = {item = 16106, count = 1}, -- Gill Legs
					[4] = {item = 28720, count = 1}, -- Falcon greaves 
					[5] = {item = 13996, count = 1}, -- Depth Ocrea
					[6] = {item = 25779, count = 1}, -- Icy Culottes
			        [7] = {item = 16167, count = 200}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24956, count = 1}, -- Runa III (Boss Thais)
				},
			},

			[4] = {item = "Lightning Legs",
				itemID = 822,
				reqItems = {
					[1] = {item = 40592, count = 1}, -- Alchemist's Boots
					[2] = {item = 3549, count = 1}, -- Pair of Soft Boots 
					[3] = {item = 31617, count = 1}, -- Winged Boots
					[4] = {item = 3553, count = 1}, -- Bunnyslippers 
					[5] = {item = 9018, count = 1}, -- firewalker boots
			        [6] = {item = 16167, count = 100}, -- Teleport Crystal
					[7] = {item = 22722, count = 10}, -- Copper Token
					[8] = {item = 24957, count = 1}, -- Runa IV (Boss Thais)
				},
			},

			[5] = {item = "Steel Boots",
				itemID = 3554,
				reqItems = {
					[1] = {item = 16107, count = 1}, -- Spellbook of Vigilance
					[2] = {item = 14769, count = 1}, -- Spellbook of Ancient Arcana
					[3] = {item = 13998, count = 1}, -- Depth Scutum
					[4] = {item = 29431, count = 1}, -- Spirit Guide
			        [5] = {item = 16167, count = 100}, -- Teleport Crystal
					[6] = {item = 22722, count = 10}, -- Copper Token
					[7] = {item = 24958, count = 1}, -- Runa V (Boss Thais)
				},
			},
		},
	},
 
	[3] = {vocation = "PHOENIX | KNIGHT/PALADIN", 
		resets = 0, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Rod of Destruction",
				itemID = 27458,
				reqItems = {
					[1] = {item = 27647, count = 1}, -- Gnome Helmet
					[2] = {item = 3387, count = 1}, -- Demon Helmet
					[3] = {item = 16109, count = 1}, -- prismatic helmet
					[4] = {item = 28715, count = 1}, -- Falcon Coif
					[5] = {item = 31577, count = 1}, -- Terra Helmet
					[6] = {item = 22757, count = 1}, -- Shroud of Despair
			        [7] = {item = 16167, count = 200}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24954, count = 1}, -- Runa I (Boss Thais)				
			    },
			},

			[2] = {item = "Knowledgeable Book",
				itemID = 27934,
				reqItems = {
					[1] = {item = 27648, count = 1}, -- Gnome armor
					[2] = {item = 11686, count = 1}, -- Royal Draken Mail
					[3] = {item = 16110, count = 1}, -- Prismatic Armor
					[4] = {item = 28719, count = 1}, -- Falcon plate 
					[5] = {item = 31579, count = 1}, -- Embrace of Nature
					[6] = {item = 25779, count = 1}, -- Swan Feather Cloak 
			        [7] = {item = 16167, count = 200}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24955, count = 1}, -- Runa II (Boss Thais)
				},
			},

			[3] = {item = "Frostmind Raiment",
				itemID = 22537,
				reqItems = { 
					[1] = {item = 27649, count = 1}, -- Gnome legs
					[2] = {item = 3389, count = 1}, -- Demon Legs
					[3] = {item = 16111, count = 1}, -- Prismatic Legs
					[4] = {item = 28720, count = 1}, -- Falcon greaves 
					[5] = {item = 13999, count = 1}, -- Ornate Legs
					[6] = {item = 24404, count = 1}, -- Tatty Dragon Scale Legs
			        [7] = {item = 16167, count = 200}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24956, count = 1}, -- Runa III (Boss Thais)
				},
			},

			[4] = {item = "Lightning Legs",
				itemID = 822,
				reqItems = {
					[1] = {item = 40592, count = 1}, -- Alchemist's Boots
					[2] = {item = 3549, count = 1}, -- Pair of Soft Boots 
					[3] = {item = 31617, count = 1}, -- Winged Boots
					[4] = {item = 3553, count = 1}, -- Bunnyslippers 
					[5] = {item = 9018, count = 1}, -- firewalker boots
			        [6] = {item = 16167, count = 100}, -- Teleport Crystal
					[7] = {item = 22722, count = 10}, -- Copper Token
					[8] = {item = 24957, count = 1}, -- Runa IV (Boss Thais)
				},
			},

			[5] = {item = "Steel Boots",
				itemID = 3554,
				reqItems = {
					[1] = {item = 16116, count = 1}, -- Prismatic Shield
					[2] = {item = 8077, count = 1}, -- Rainbow Shield
					[3] = {item = 3422, count = 1}, -- Great Shield
					[4] = {item = 14000, count = 1}, -- Ornate Shield
			        [5] = {item = 16167, count = 100}, -- Teleport Crystal
					[6] = {item = 22722, count = 10}, -- Copper Token
					[7] = {item = 24958, count = 1}, -- Runa V (Boss Thais)
				},
			},
		},
	},
 
	[4] = {vocation = "EQUIP. SUPREME",
		resets = 0, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Mystic Blade",
					itemID = 34082,
					reqItems = {
						[1] = {item = 22516, count = 50}, -- Silver Tokens
						[2] = {item = 3264, count = 1}, -- Sword
						[3] = {item = 5887, count = 20}, -- Piece of royal steel
						[4] = {item = 16133, count = 20}, -- Pulverized ore
						[5] = {item = 20062, count = 50}, -- Cluster of Solace
					},
				},

			[2] = {item = "Falcon Escutcheon",
					itemID = 28722,
					reqItems = {
						[1] = {item = 22516, count = 30}, -- Silver Tokens
						[2] = {item = 3433, count = 1}, -- Griffin Shield
						[3] = {item = 5889, count = 20}, -- piece of draconian steel
					},
				},

			[3] = {item = "Terra Helmet",
					itemID = 31557,
					reqItems = {
						[1] = {item = 22516, count = 30}, -- Silver Tokens
						[2] = {item = 3392, count = 1}, -- Royal helmet
						[3] = {item = 5880, count = 100}, -- Iron ore
						[4] = {item = 10310, count = 30}, -- Shiny Stone
					},
				},

			[4] = {item = "Crystalline Armor",
					itemID = 8050,
					reqItems = {
						[1] = {item = 22516, count = 40}, -- Silver Tokens
						[2] = {item = 3567, count = 1}, -- Blue Robe
						[3] = {item = 5912, count = 100}, -- Blue piece of cloth
					},
				},

			[5] = {item = "Ornate Legs",
					itemID = 13999,
					reqItems = {
						[1] = {item = 22516, count = 25}, -- Silver Tokens
						[2] = {item = 3398, count = 1}, -- Dwarven legs
						[3] = {item = 5809, count = 1}, -- Soul stone
						[4] = {item = 5526, count = 20}, -- Demon dust
					},
				},	


			[6] = {item = "Pair of Soulwalkers",
					itemID = 34097,
					reqItems = {
						[1] = {item = 22516, count = 25}, -- Silver Tokens
						[2] = {item = 3079, count = 1}, -- Boots of haste
						[3] = {item = 5888, count = 30}, -- piece of hell steel
					},
				},
			},
		},
	},
}

local simpleCraftingSystem = Action()
function simpleCraftingSystem.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    player:sendMainCraftWindow(config)
    return true
end
 
simpleCraftingSystem:aid(25308)
simpleCraftingSystem:register()