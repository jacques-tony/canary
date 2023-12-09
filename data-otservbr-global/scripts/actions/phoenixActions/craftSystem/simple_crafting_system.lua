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
					[4] = {item = 16160, count = 1}, -- Crystalline Sword
					[5] = {item = 7417, count = 1}, -- Runed Sword
					[6] = {item = 31614, count = 1}, -- Tagralt Blade				
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell 
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell				
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI							
				},
			},
			
			[2] = {item = "Phoenix Axe",   -- phoenix axe
				itemID = 43868,
				reqItems = {
					[1] = {item = 28724, count = 1}, -- Falcon Axe
					[2] = {item = 30396, count = 1}, -- Cobra Axe
					[3] = {item = 34253, count = 1}, -- Lion Axe
 					[4] = {item = 16161, count = 1}, -- Crystalline Axe
					[5] = {item = 7420, count = 1}, -- Reaper's Axe
					[6] = {item = 32616, count = 1}, -- Phantasmal Axe				
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI						
				},
			},

			[3] = {item = "Phoenix Club", -- phoenix club
				itemID = 43866,
				reqItems = {
					[1] = {item = 28725, count = 1}, -- Falcon Mace
					[2] = {item = 30395, count = 1}, -- Cobra Club
					[3] = {item = 34254, count = 1}, -- Lion Hammer
 					[4] = {item = 16162, count = 1}, -- Mycological Mace
					[5] = {item = 28831, count = 1}, -- Unliving Demonbone
					[6] = {item = 29419, count = 1}, -- Resizer
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI						
				},
			},

			[4] = {item = "Phoenix Bow", -- phoenix bow
				itemID = 43877,
				reqItems = {
					[1] = {item = 28718, count = 1}, -- Falcon Bow
					[2] = {item = 30393, count = 1}, -- Cobra Crossbow
					[3] = {item = 34150, count = 1}, -- Lion Longbow
 					[4] = {item = 16163, count = 1}, -- Crystal Crossbow
					[5] = {item = 8025, count = 1}, -- The Ironworker
					[6] = {item = 29417, count = 1}, -- Living Vine Bow
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI						
				},
			},

			[5] = {item = "Phoenix Crossbow", -- phoenix crossbow
				itemID = 43879,
				reqItems = {
					[1] = {item = 28718, count = 1}, -- Falcon Bow
					[2] = {item = 30393, count = 1}, -- Cobra Crossbow
					[3] = {item = 34150, count = 1}, -- Lion Longbow
 					[4] = {item = 16163, count = 1}, -- Crystal Crossbow
					[5] = {item = 8025, count = 1}, -- The Ironworker
					[6] = {item = 29417, count = 1}, -- Living Vine Bow
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI						
				},
			},

			[6] = {item = "Phoenix Rod", -- phoenix rod
				itemID = 43885,
				reqItems = {
					[1] = {item = 28716, count = 1}, -- Falcon Rod
					[2] = {item = 30400, count = 1}, -- Cobra Rod
					[3] = {item = 34151, count = 1}, -- Lion rod
 					[4] = {item = 28826, count = 1}, -- Deepling Fork
					[5] = {item = 16117, count = 1}, -- Muck Rod
					[6] = {item = 29425, count = 1}, -- Energized Limb
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI						
				},
			},
			 
			[7] = {item = "Phoenix wand", -- phoenix wand
				itemID = 43882, 
				reqItems = {
					[1] = {item = 28717, count = 1}, -- Falcon Wand
					[2] = {item = 30399, count = 1}, -- Cobra Wand
					[3] = {item = 34152, count = 1}, -- Lion Wand
 					[4] = {item = 28825, count = 1}, -- Deepling Ceremonial Dagger
					[5] = {item = 16115, count = 1}, -- Wand of Everblazing
					[6] = {item = 12603, count = 1}, -- Wand of Dimensions
					[7] = {item = 27619, count = 10}, -- Giant Tentacle
					[8] = {item = 27621, count = 10}, -- Huge Shell
					[9] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell		
					[10] = {item = 9058, count = 100}, -- Gold Ingot		
					[11] = {item = 24959, count = 100}, -- Part of a Rune VI						
				},
			},
		}, 
	},
 
	[2] = {vocation= "PHOENIX | MAGES", 
		resets = 0, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Phoenix Mask",
				itemID = 55027,
				reqItems = {
					[1] = {item = 27647, count = 1}, -- Gnome Helmet
					[2] = {item = 3387, count = 1}, -- Demon Helmet
					[3] = {item = 16104, count = 1}, -- Gill gugel
					[4] = {item = 28714, count = 1}, -- Falcon Circlet
					[5] = {item = 31582, count = 1}, -- Galea Mortis
					[6] = {item = 3395, count = 1}, -- Ceremonial Mask
					[7] = {item = 8864, count = 1}, -- Yalahari Mask
					[8] = {item = 22754, count = 1}, -- Visage of the End Days				
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24954, count = 1}, -- Runa I (Boss Thais)				
			    },
			},

			[2] = {item = "Phoenix Cape",
				itemID = 55028,
				reqItems = {
					[1] = {item = 27648, count = 1}, -- Gnome armor
					[2] = {item = 11687, count = 1}, -- Royal Scale Robe
					[3] = {item = 16105, count = 1}, -- Gill gugel
					[4] = {item = 28719, count = 1}, -- Falcon plate 
					[5] = {item = 31578, count = 1}, -- Bear Skin
					[6] = {item = 39164, count = 1}, -- Dawnfire Sherwani
					[7] = {item = 40533, count = 1}, -- Broken Iks Cuirass				
					[8] = {item = 25779, count = 1}, -- Swan Feather Cloak 
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24955, count = 1}, -- Runa II (Boss Thais)
				},
			},

			[3] = {item = "Phoenix Kilt",
				itemID = 55029,
				reqItems = {
					[1] = {item = 27649, count = 1}, -- Gnome legs
					[2] = {item = 3389, count = 1}, -- Demon Legs
					[3] = {item = 16106, count = 1}, -- Gill Legs
					[4] = {item = 28720, count = 1}, -- Falcon greaves 
					[5] = {item = 13996, count = 1}, -- Depth Ocrea
					[6] = {item = 39167, count = 1}, -- Midnight Sarong
					[7] = {item = 40531, count = 1}, -- Broken Iks Faulds
					[8] = {item = 19366, count = 1}, -- Icy Culottes					
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24956, count = 1}, -- Runa III (Boss Thais)
				},
			},

			[4] = {item = "Phoenix Shoes",
				itemID = 55030,
				reqItems = {
					[1] = {item = 32098, count = 1}, -- Traditional Leather Shoes
					[2] = {item = 3549, count = 1}, -- Pair of Soft Boots 
					[3] = {item = 31617, count = 1}, -- Winged Boots
					[4] = {item = 3553, count = 1}, -- Bunnyslippers 
					[5] = {item = 9018, count = 1}, -- firewalker boots
					[6] = {item = 32619, count = 1}, -- Pair of Nightmare Boots					
			        [7] = {item = 16167, count = 100}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24957, count = 1}, -- Runa IV (Boss Thais)
				},
			},

			[5] = {item = "Phoenix Spellbook",
				itemID = 55041,
				reqItems = {
					[1] = {item = 16107, count = 1}, -- Spellbook of Vigilance
					[2] = {item = 14769, count = 1}, -- Spellbook of Ancient Arcana
					[3] = {item = 13998, count = 1}, -- Depth Scutum
					[4] = {item = 29431, count = 1}, -- Spirit Guide
					[5] = {item = 22755, count = 1}, -- Book of Lies
					[6] = {item = 34153, count = 1}, -- Lion Spellbook	
					[7] = {item = 29942, count = 100}, -- Maxxenius Head					
			        [8] = {item = 16167, count = 100}, -- Teleport Crystal
					[9] = {item = 22722, count = 10}, -- Copper Token
					[10] = {item = 24958, count = 1}, -- Runa V (Boss Thais)
				},
			},
		},
	},
 
	[3] = {vocation = "PHOENIX | KNIGHT", 
		resets = 0, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Phoenix Helmet",
				itemID = 55031,
				reqItems = {
					[1] = {item = 27647, count = 1}, -- Gnome Helmet
					[2] = {item = 3387, count = 1}, -- Demon Helmet
					[3] = {item = 16109, count = 1}, -- prismatic helmet
					[4] = {item = 28715, count = 1}, -- Falcon Coif
					[5] = {item = 31577, count = 1}, -- Terra Helmet
					[6] = {item = 3395, count = 1}, -- Ceremonial Mask					
					[7] = {item = 5741, count = 1}, -- Skull Helmet					
					[8] = {item = 22757, count = 1}, -- Shroud of Despair
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24954, count = 1}, -- Runa I (Boss Thais)				
			    },
			},

			[2] = {item = "Phoenix Armor",
				itemID = 55032,
				reqItems = {
					[1] = {item = 27648, count = 1}, -- Gnome armor
					[2] = {item = 11686, count = 1}, -- Royal Draken Mail
					[3] = {item = 16110, count = 1}, -- Prismatic Armor
					[4] = {item = 28719, count = 1}, -- Falcon plate 
					[5] = {item = 31579, count = 1}, -- Embrace of Nature
					[6] = {item = 13993, count = 1}, -- Ornate Chestplate			
					[7] = {item = 40533, count = 1}, -- Broken Iks Cuirass					
					[8] = {item = 25779, count = 1}, -- Swan Feather Cloak 
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24955, count = 1}, -- Runa II (Boss Thais)
				},
			},

			[3] = {item = "Phoenix Legs",
				itemID = 55033,
				reqItems = { 
					[1] = {item = 27649, count = 1}, -- Gnome legs
					[2] = {item = 3389, count = 1}, -- Demon Legs
					[3] = {item = 16111, count = 1}, -- Prismatic Legs
					[4] = {item = 28720, count = 1}, -- Falcon greaves 
					[5] = {item = 13999, count = 1}, -- Ornate Legs
					[6] = {item = 32617, count = 1}, -- Fabulous Legs
					[7] = {item = 40531, count = 1}, -- Broken Iks Faulds				
					[8] = {item = 24404, count = 1}, -- Tatty Dragon Scale Legs
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24956, count = 1}, -- Runa III (Boss Thais)
				},
			},

			[4] = {item = "Phoenix Boots",
				itemID = 55033,
				reqItems = {
					[1] = {item = 32098, count = 1}, -- Traditional Leather Shoes
					[2] = {item = 3549, count = 1}, -- Pair of Soft Boots 
					[3] = {item = 31617, count = 1}, -- Winged Boots
					[4] = {item = 3553, count = 1}, -- Bunnyslippers 
					[5] = {item = 9018, count = 1}, -- firewalker boots
					[6] = {item = 22756, count = 1}, -- Treader of Torment				
			        [7] = {item = 16167, count = 100}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24957, count = 1}, -- Runa IV (Boss Thais)
				},
			},

			[5] = {item = "Phoenix Shield",
				itemID = 55034,
				reqItems = {
					[1] = {item = 16116, count = 1}, -- Prismatic Shield
					[2] = {item = 8077, count = 1}, -- Rainbow Shield
					[3] = {item = 3422, count = 1}, -- Great Shield
					[4] = {item = 14000, count = 1}, -- Ornate Shield
					[5] = {item = 22726, count = 1}, -- Rift Shield				
					[6] = {item = 22758, count = 1}, -- Death Gaze			
					[7] = {item = 29942, count = 100}, -- Maxxenius Head							
			        [8] = {item = 16167, count = 100}, -- Teleport Crystal
					[9] = {item = 22722, count = 10}, -- Copper Token
					[10] = {item = 24958, count = 1}, -- Runa V (Boss Thais)
				},
			},
		},
	},
	
	[4] = {vocation = "PHOENIX | PALADIN", 
		resets = 0, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Phoenix Cowl",
				itemID = 55035,
				reqItems = {
					[1] = {item = 27647, count = 1}, -- Gnome Helmet
					[2] = {item = 3387, count = 1}, -- Demon Helmet
					[3] = {item = 16109, count = 1}, -- prismatic helmet
					[4] = {item = 28715, count = 1}, -- Falcon Coif
					[5] = {item = 31577, count = 1}, -- Terra Helmet
					[6] = {item = 3395, count = 1}, -- Ceremonial Mask
					[7] = {item = 11689, count = 1}, -- Elite Draken Helmet			
					[8] = {item = 34156, count = 1}, -- Lion Spangenhelm					
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24954, count = 1}, -- Runa I (Boss Thais)				
			    },
			},

			[2] = {item = "Phoenix Chestplate",
				itemID = 55036,
				reqItems = {
					[1] = {item = 27648, count = 1}, -- Gnome armor
					[2] = {item = 11686, count = 1}, -- Royal Draken Mail
					[3] = {item = 16110, count = 1}, -- Prismatic Armor
					[4] = {item = 28719, count = 1}, -- Falcon plate 
					[5] = {item = 31579, count = 1}, -- Embrace of Nature
					[6] = {item = 13994, count = 1}, -- Depth Lorica
					[7] = {item = 40533, count = 1}, -- Broken Iks Cuirass				
					[8] = {item = 25779, count = 1}, -- Swan Feather Cloak 
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24955, count = 1}, -- Runa II (Boss Thais)
				},
			},

			[3] = {item = "Phoenix Greaves",
				itemID = 55037,
				reqItems = { 
					[1] = {item = 27649, count = 1}, -- Gnome legs
					[2] = {item = 3389, count = 1}, -- Demon Legs
					[3] = {item = 16111, count = 1}, -- Prismatic Legs
					[4] = {item = 28720, count = 1}, -- Falcon greaves 
					[5] = {item = 13999, count = 1}, -- Ornate Legs
					[6] = {item = 8863, count = 1}, -- Yalahari Leg Piece
					[7] = {item = 40531, count = 1}, -- Broken Iks Faulds			
					[8] = {item = 24404, count = 1}, -- Tatty Dragon Scale Legs
			        [9] = {item = 16167, count = 200}, -- Teleport Crystal
					[10] = {item = 22722, count = 10}, -- Copper Token
					[11] = {item = 24956, count = 1}, -- Runa III (Boss Thais)
				},
			},

			[4] = {item = "Phoenix Galoshes",
				itemID = 55038,
				reqItems = {
					[1] = {item = 32098, count = 1}, -- Traditional Leather Shoes
					[2] = {item = 3549, count = 1}, -- Pair of Soft Boots 
					[3] = {item = 31617, count = 1}, -- Winged Boots
					[4] = {item = 3553, count = 1}, -- Bunnyslippers 
					[5] = {item = 9018, count = 1}, -- firewalker boots
					[6] = {item = 39161, count = 1}, -- Feverbloom Boots					
			        [7] = {item = 16167, count = 100}, -- Teleport Crystal
					[8] = {item = 22722, count = 10}, -- Copper Token
					[9] = {item = 24957, count = 1}, -- Runa IV (Boss Thais)

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