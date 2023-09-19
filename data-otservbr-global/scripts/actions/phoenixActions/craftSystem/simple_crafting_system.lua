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
	[1] = {vocation = "Phoenix Weapons", -- This is the category can be anything.
		resets = 2, -- Quantidade de resets para poder abrir a janela. 
		items = {
			[1] = {item = "Shadow Sceptre", -- item name (THIS MUST BE EXACT OR IT WILL NOT WORK!) phoenix sword
				itemID = 7451, -- item to be made
				reqItems = { -- items and the amounts in order to craft.
					[1] = {item = 28723, count = 1}, -- Falcon Longsword
					[2] = {item = 30398, count = 1}, -- Cobra Sword
					[3] = {item = 34155, count = 1}, -- Lion Longsword
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell 
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell								
				},
			},

			[2] = {item = "Knowledgeable Book",   -- phoenix axe
				itemID = 27934,
				reqItems = {
					[1] = {item = 28724, count = 1}, -- Falcon Axe
					[2] = {item = 30396, count = 1}, -- Cobra Axe
					[3] = {item = 34253, count = 1}, -- Lion Axe
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell								
				},
			},

			[3] = {item = "Witch Hat", -- phoenix club
				itemID = 39151,
				reqItems = {
					[1] = {item = 28725, count = 1}, -- Falcon Mace
					[2] = {item = 30395, count = 1}, -- Cobra Club
					[3] = {item = 34254, count = 1}, -- Lion Hammer
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	
				},
			},

			[4] = {item = "Ethno Coat", -- phoenix bow
				itemID = 8064,
				reqItems = {
					[1] = {item = 28718, count = 1}, -- Falcon Bow
					[2] = {item = 30393, count = 1}, -- Cobra Crossbow
					[3] = {item = 34150, count = 1}, -- Lion Longbow
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	 
				},
			},

			[5] = {item = "Demon Legs", -- phoenix crossbow
				itemID = 3389,
				reqItems = {
					[1] = {item = 28718, count = 1}, -- Falcon Bow
					[2] = {item = 30393, count = 1}, -- Cobra Crossbow
					[3] = {item = 34150, count = 1}, -- Lion Longbow
					[4] = {item = 27619, count = 10}, -- Giant Tentacle
					[5] = {item = 27621, count = 10}, -- Huge Shell
					[6] = {item = 27627, count = 10}, -- Huge Spiky Snail Shell	 
				},
			},

			[6] = {item = "Makeshift Boots", -- phoenix rod
				itemID = 35519,
				reqItems = {
					[1] = {item = 28716, count = 1}, -- Falcon Rod
					[2] = {item = 30400, count = 1}, -- Magma Boots
					[3] = {item = 12600, count = 20}, -- Coal
					[4] = {item = 16126, count = 20}, -- red crystal fragments
				},
			},
		},
	},
 
	[2] = {vocation= "Elder Druid", 
		resets = 20, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Rod of Destruction",
				itemID = 27458,
				reqItems = {
					[1] = {item = 22516, count = 50}, -- Silver Tokens
					[2] = {item = 5944, count = 20}, -- Soul orb
					[3] = {item = 5904, count = 30}, -- Magic Sulphur
					[4] = {item = 7387, count = 1}, -- Diamond Sceptre
					[5] = {item = 20062, count = 50}, -- Cluster of Solace
			},
			},

			[2] = {item = "Knowledgeable Book",
				itemID = 27934,
				reqItems = {
					[1] = {item = 22516, count = 30}, -- Silver Tokens
					[2] = {item = 3573, count = 1}, -- Magician Hat
					[3] = {item = 3014, count = 1}, -- Star Amulet
					[4] = {item = 5912, count = 100}, -- Blue piece of cloth
				},
			},

			[3] = {item = "Frostmind Raiment",
				itemID = 22537,
				reqItems = {
					[1] = {item = 22516, count = 40}, -- Silver Tokens
					[2] = {item = 19391, count = 1}, -- Furious frock
					[3] = {item = 7290, count = 10}, -- Shard
					[4] = {item = 16124, count = 30}, -- Blue crystal splinter
				},
			},

			[4] = {item = "Lightning Legs",
				itemID = 822,
				reqItems = {
					[1] = {item = 22516, count = 25}, -- Silver Tokens
					[2] = {item = 645, count = 1}, -- Blue legs
					[3] = {item = 9661, count = 20}, -- frosty heart
					[4] = {item = 3038, count = 1}, -- Green gem
				},
			},

			[5] = {item = "Steel Boots",
				itemID = 3554,
				reqItems = {
					[1] = {item = 22516, count = 25}, -- Silver Tokens
					[2] = {item = 819, count = 1}, -- Glacier Shoes
					[3] = {item = 9661, count = 20}, -- frosty heart
					[4] = {item = 16119, count = 20}, -- Blue crystal shard
				},
			},
		},
	},
 
	[3] = {vocation = "Royal Paladin", 
		resets = 30, -- Quantidade de resets para poder abrir a janela.
		items = {
			[1] = {item = "Rift Crossbow",
				itemID = 22867,
				reqItems = {
					[1] = {item = 22516, count = 60}, -- Silver Tokens
					[2] = {item = 3349, count = 1}, -- Crossbow
					[3] = {item = 5904, count = 30}, -- Magic Sulphur
					[4] = {item = 16133, count = 20}, -- Pulverized Ore
					[5] = {item = 20062, count = 50}, -- Cluster of Solace
				},
			},

			[2] = {item = "Zaoan Helmet",
				itemID = 10385,
				reqItems = {
					[1] = {item = 22516, count = 35}, -- Silver Tokens
					[2] = {item = 5880, count = 100}, -- Iron Ore
					[3] = {item = 5954, count = 30}, -- Demon Horn
					[4] = {item = 3391, count = 1}, -- Crusader Helmet
				},
			},

			[3] = {item = "Frostsoul Tabard",
				itemID = 8057,
				reqItems = {
					[1] = {item = 22516, count = 40}, -- Silver Tokens
					[2] = {item = 5912, count = 100}, -- Blue Cloth
					[3] = {item = 5954, count = 1}, -- Demon Horn
				},
			},

			[4] = {item = "Prismatic Legs",
				itemID = 16111,
				reqItems = {
					[1] = {item = 22516, count = 35}, -- Silver Tokens
					[2] = {item = 3398, count = 1}, -- Dwarven Legs
					[3] = {item = 5809, count = 1}, -- Soul Stone
					[4] = {item = 5905, count = 30}, -- Vampire Dust
				},
			},

			[5] = {item = "Guardian Boots",
				itemID = 10323,
				reqItems = {
					[1] = {item = 22516, count = 30}, -- Silver Tokens
					[2] = {item = 20205, count = 20}, -- Goosebump Leather
					[3] = {item = 3554, count = 1}, -- Steel Boots
				},
			},
		},
	},
 
	[4] = {vocation = "Elite Knight",
		resets = 40, -- Quantidade de resets para poder abrir a janela.
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