-- Load core functions
dofile(CORE_DIRECTORY .. "/libs/functions/load.lua")

-- Core/data Global Storage System
dofile(CORE_DIRECTORY .. "/libs/core/global_storage.lua")

-- Daily reward library
dofile(CORE_DIRECTORY .. "/libs/daily_reward/daily_reward.lua")
dofile(CORE_DIRECTORY .. "/libs/daily_reward/player.lua")

-- Debugging helper function for Lua developers
dofile(CORE_DIRECTORY .. "/libs/debugging/dump.lua")

-- Reward boss library
dofile(CORE_DIRECTORY .. "/libs/reward_boss/reward_boss.lua")
dofile(CORE_DIRECTORY .. "/libs/reward_boss/player.lua")
dofile(CORE_DIRECTORY .. "/libs/reward_boss/monster.lua")

dofile(CORE_DIRECTORY .. "/libs/achievements_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/bitwise_flags.lua")
dofile(CORE_DIRECTORY .. "/libs/door.lua")
dofile(CORE_DIRECTORY .. "/libs/exercise_training.lua")
dofile(CORE_DIRECTORY .. "/libs/vocation.lua")
dofile(CORE_DIRECTORY .. "/libs/familiar.lua")
dofile(CORE_DIRECTORY .. "/libs/hireling_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/modal_window_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/window.lua")
dofile(CORE_DIRECTORY .. "/libs/forge_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/zones_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/hazard_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/loyalty_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/encounters_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/raids_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/concoctions_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/kill_lib.lua")

-- Custom 
dofile(CORE_DIRECTORY .. "/libs/custom/items_with_resets.lua") 
dofile(CORE_DIRECTORY .. "/libs/custom/reset_system.lua")
dofile(CORE_DIRECTORY .. "/libs/custom/simple_crafting_system.lua")  
dofile(CORE_DIRECTORY .. "/libs/custom/mining.lua")
dofile(CORE_DIRECTORY .. "/libs/custom/addon_quest_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/custom/mount_quest_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/custom/addon_doll_lib.lua")
dofile(CORE_DIRECTORY .. "/libs/custom/mount_doll_lib.lua") 
dofile(CORE_DIRECTORY .. "/libs/custom/lib_reflect_system.lua")    
dofile(CORE_DIRECTORY .. "/libs/custom/bounty_system.lua")     
dofile(CORE_DIRECTORY .. "/libs/custom/dwbm_experience_lib.lua")     