/**
 * Canary - A free and open-source MMORPG server emulator
 * Copyright (©) 2019-2022 OpenTibiaBR <opentibiabr@outlook.com>
 * Repository: https://github.com/opentibiabr/canary
 * License: https://github.com/opentibiabr/canary/blob/main/LICENSE
 * Contributors: https://github.com/opentibiabr/canary/graphs/contributors
 * Website: https://docs.opentibiabr.com/
 */

#pragma once

// Enum
enum ConfigKey_t : uint16_t {
	ACTIONS_DELAY_INTERVAL,
	ADVENTURERSBLESSING_LEVEL,
	AIMBOT_HOTKEY_ENABLED,
	ALLOW_BLOCK_SPAWN,
	ALLOW_CHANGEOUTFIT,
	ALLOW_RELOAD,
	ALL_CONSOLE_LOG,
	AUTH_TYPE,
	AUTOBANK,
	AUTOLOOT,
	BESTIARY_KILL_MULTIPLIER,
	BESTIARY_RATE_CHARM_SHOP_PRICE,
	BIND_ONLY_GLOBAL_ADDRESS,
	BLACK_SKULL_DURATION,
	BOOSTED_BOSS_KILL_BONUS,
	BOOSTED_BOSS_LOOT_BONUS,
	BOOSTED_BOSS_SLOT,
	BOSSTIARY_KILL_MULTIPLIER,
	BOSS_DEFAULT_TIME_TO_DEFEAT,
	BOSS_DEFAULT_TIME_TO_FIGHT_AGAIN,
	BUY_AOL_COMMAND_FEE,
	BUY_BLESS_COMMAND_FEE,
	CHECK_EXPIRED_MARKET_OFFERS_EACH_MINUTES,
	CLASSIC_ATTACK_SPEED,
	CLEAN_PROTECTION_ZONES,
	COMBAT_CHAIN_DELAY,
	COMPRESSION_LEVEL,
	CONVERT_UNSAFE_SCRIPTS,
	CORE_DIRECTORY,
	CRITICALCHANCE,
	DATA_DIRECTORY,
	DAY_KILLS_TO_RED,
	DEATH_LOSE_PERCENT,
	DEFAULT_DESPAWNRADIUS,
	DEFAULT_DESPAWNRANGE,
	DEFAULT_PRIORITY,
	DEPOTCHEST,
	DEPOT_BOXES,
	DISABLE_LEGACY_RAIDS,
	DISABLE_MONSTER_ARMOR,
	DISCORD_SEND_FOOTER,
	DISCORD_WEBHOOK_DELAY_MS,
	DISCORD_WEBHOOK_URL,
	EMOTE_SPELLS,
	EXPERIENCE_FROM_PLAYERS,
	EXP_FROM_PLAYERS_LEVEL_RANGE,
	EX_ACTIONS_DELAY_INTERVAL,
	FAMILIAR_TIME,
	FORCE_MONSTERTYPE_LOAD,
	FORGE_AMOUNT_MULTIPLIER,
	FORGE_BASE_SUCCESS_RATE,
	FORGE_BONUS_SUCCESS_RATE,
	FORGE_CORE_COST,
	FORGE_COST_ONE_SLIVER,
	FORGE_FIENDISH_CREATURES_LIMIT,
	FORGE_FIENDISH_INTERVAL_TIME,
	FORGE_FIENDISH_INTERVAL_TYPE,
	FORGE_FUSION_DUST_COST,
	FORGE_INFLUENCED_CREATURES_LIMIT,
	FORGE_MAX_DUST,
	FORGE_MAX_ITEM_TIER,
	FORGE_MAX_SLIVERS,
	FORGE_MIN_SLIVERS,
	FORGE_SLIVER_AMOUNT,
	FORGE_TIER_LOSS_REDUCTION,
	FORGE_TRANSFER_DUST_COST,
	FRAG_TIME,
	FREE_DEPOT_LIMIT,
	FREE_PREMIUM,
	FREE_QUEST_STAGE,
	GAME_PORT,
	GLOBAL_SERVER_SAVE_CLEAN_MAP,
	GLOBAL_SERVER_SAVE_CLOSE,
	GLOBAL_SERVER_SAVE_NOTIFY_DURATION,
	GLOBAL_SERVER_SAVE_NOTIFY_MESSAGE,
	GLOBAL_SERVER_SAVE_SHUTDOWN,
	GLOBAL_SERVER_SAVE_TIME,
	HAZARD_CRITICAL_CHANCE,
	HAZARD_CRITICAL_INTERVAL,
	HAZARD_CRITICAL_MULTIPLIER,
	HAZARD_DAMAGE_MULTIPLIER,
	HAZARD_DEFENSE_MULTIPLIER,
	HAZARD_DODGE_MULTIPLIER,
	HAZARD_EXP_BONUS_MULTIPLIER,
	HAZARD_LOOT_BONUS_MULTIPLIER,
	HAZARD_PODS_DAMAGE,
	HAZARD_PODS_DROP_MULTIPLIER,
	HAZARD_PODS_TIME_TO_DAMAGE,
	HAZARD_PODS_TIME_TO_SPAWN,
	HAZARD_SPAWN_PLUNDER_MULTIPLIER,
	HOUSE_BUY_LEVEL,
	HOUSE_LOSE_AFTER_INACTIVITY,
	HOUSE_OWNED_BY_ACCOUNT,
	HOUSE_PRICE_PER_SQM,
	HOUSE_PRICE_RENT_MULTIPLIER,
	HOUSE_PURSHASED_SHOW_PRICE,
	HOUSE_RENT_PERIOD,
	HOUSE_RENT_RATE,
	INVENTORY_GLOW,
	IP,
	KICK_AFTER_MINUTES,
	LOCATION,
	LOGIN_PORT,
	LOGLEVEL,
	LOW_LEVEL_BONUS_EXP,
	LOYALTY_BONUS_PERCENTAGE_MULTIPLIER,
	LOYALTY_ENABLED,
	LOYALTY_POINTS_PER_CREATION_DAY,
	LOYALTY_POINTS_PER_PREMIUM_DAY_PURCHASED,
	LOYALTY_POINTS_PER_PREMIUM_DAY_SPENT,
	MAINTAIN_MODE_MESSAGE,
	MAP_AUTHOR,
	MAP_CUSTOM_AUTHOR,
	MAP_CUSTOM_NAME,
	MAP_DOWNLOAD_URL,
	MAP_NAME,
	MARKET_OFFER_DURATION,
	MARKET_PREMIUM,
	MAX_ALLOWED_ON_A_DUMMY,
	MAX_CONTAINER,
	MAX_CONTAINER_ITEM,
	MAX_DAMAGE_REFLECTION,
	MAX_ELEMENTAL_RESISTANCE,
	MAX_MARKET_OFFERS_AT_A_TIME_PER_PLAYER,
	MAX_MESSAGEBUFFER,
	MAX_PACKETS_PER_SECOND,
	MAX_PLAYERS,
	MAX_PLAYERS_OUTSIDE_PZ_PER_ACCOUNT,
	MAX_PLAYERS_PER_ACCOUNT,
	WHEEL_POINTS_PER_RESETS,
	MULTIPLIER_ATTACKONFIST,	
	MAX_SPEED_ATTACKONFIST,
	METRICS_ENABLE_OSTREAM,
	METRICS_ENABLE_PROMETHEUS,
	METRICS_OSTREAM_INTERVAL,
	METRICS_PROMETHEUS_ADDRESS,
	MIN_ELEMENTAL_RESISTANCE,
	MONTH_KILLS_TO_RED,
	MULTIPLIER_ATTACKONFIST,
	MYSQL_DB,
	MYSQL_HOST,
	MYSQL_PASS,
	MYSQL_SOCK,
	MYSQL_USER,
	M_CONST,
	OLD_PROTOCOL,
	ONE_PLAYER_ON_ACCOUNT,
	ONLY_INVITED_CAN_MOVE_HOUSE_ITEMS,
	ONLY_PREMIUM_ACCOUNT,
	OPTIMIZE_DATABASE,
	ORANGE_SKULL_DURATION,
	OWNER_EMAIL,
	OWNER_NAME,
	PARALLELISM,
	PARTY_AUTO_SHARE_EXPERIENCE,
	PARTY_LIST_MAX_DISTANCE,
	PARTY_SHARE_LOOT_BOOSTS,
	PARTY_SHARE_LOOT_BOOSTS_DIMINISHING_FACTOR,
	PREMIUM_DEPOT_LIMIT,
	PREY_BONUS_REROLL_PRICE,
	PREY_BONUS_TIME,
	PREY_ENABLED,
	PREY_FREE_REROLL_TIME,
	PREY_FREE_THIRD_SLOT,
	PREY_REROLL_PRICE_LEVEL,
	PREY_SELECTION_LIST_PRICE,
	PROTECTION_LEVEL,
	PUSH_DELAY,
	PUSH_DISTANCE_DELAY,
	PUSH_WHEN_ATTACKING,
	PVP_MAX_LEVEL_DIFFERENCE,
	PVP_RATE_DAMAGE_REDUCTION_PER_LEVEL,
	PVP_RATE_DAMAGE_TAKEN_PER_LEVEL,
	PZ_LOCKED,
	RANDOM_MONSTER_SPAWN,
	RATE_ATTACK_SPEED,
	RATE_BOSS_ATTACK,
	RATE_BOSS_DEFENSE,
	RATE_BOSS_HEALTH,
	RATE_EXERCISE_TRAINING_SPEED,
	RATE_EXPERIENCE,
	RATE_HEALTH_REGEN,
	RATE_HEALTH_REGEN_SPEED,
	RATE_KILLING_IN_THE_NAME_OF_POINTS,
	RATE_LOOT,
	RATE_MAGIC,
	RATE_MANA_REGEN,
	RATE_MANA_REGEN_SPEED,
	RATE_MONSTER_ATTACK,
	RATE_MONSTER_DEFENSE,
	RATE_MONSTER_HEALTH,
	RATE_NPC_ATTACK,
	RATE_NPC_DEFENSE,
	RATE_NPC_HEALTH,
	RATE_OFFLINE_TRAINING_SPEED,
	RATE_SKILL,
	RATE_SOUL_REGEN,
	RATE_SOUL_REGEN_SPEED,
	RATE_SPAWN,
	RATE_SPELL_COOLDOWN,
	RATE_USE_STAGES,
	RED_SKULL_DURATION,
	REFUND_BEGINNING_WEAPON_MANA,
	REMOVE_BEGINNING_WEAPON_AMMO,
	REMOVE_POTION_CHARGES,
	REMOVE_RUNE_CHARGES,
	REMOVE_WEAPON_AMMO,
	REMOVE_WEAPON_CHARGES,
	REPLACE_KICK_ON_LOGIN,
	RESET_SESSIONS_ON_STARTUP,
	REWARD_CHEST_COLLECT_ENABLED,
	REWARD_CHEST_MAX_COLLECT_ITEMS,
	SAVE_INTERVAL_TIME,
	SAVE_INTERVAL_TYPE,
	SCRIPTS_CONSOLE_LOGS,
	SERVER_MOTD,
	SERVER_NAME,
	SKULLED_DEATH_LOSE_STORE_ITEM,
	SORT_LOOT_BY_CHANCE,
	SQL_PORT,
	STAIRHOP_DELAY,
	STAMINA_GREEN_DELAY,
	STAMINA_ORANGE_DELAY,
	STAMINA_PZ,
	STAMINA_PZ_GAIN,
	STAMINA_SYSTEM,
	STAMINA_TRAINER,
	STAMINA_TRAINER_DELAY,
	STAMINA_TRAINER_GAIN,
	STASH_ITEMS,
	STASH_MOVING,
	STATUSQUERY_TIMEOUT,
	STATUS_PORT,
	STORE_COIN_PACKET,
	STORE_IMAGES_URL,
	TASK_HUNTING_BONUS_REROLL_PRICE,
	TASK_HUNTING_ENABLED,
	TASK_HUNTING_FREE_REROLL_TIME,
	TASK_HUNTING_FREE_THIRD_SLOT,
	TASK_HUNTING_LIMIT_EXHAUST,
	TASK_HUNTING_REROLL_PRICE_LEVEL,
	TASK_HUNTING_SELECTION_LIST_PRICE,
	TELEPORT_PLAYER_TO_VOCATION_ROOM,
	TELEPORT_SUMMONS,
	TIBIADROME_CONCOCTION_COOLDOWN,
	TIBIADROME_CONCOCTION_DURATION,
	TIBIADROME_CONCOCTION_TICK_TYPE,
	TOGGLE_ATTACK_SPEED_ONFIST,
	TOGGLE_DOWNLOAD_MAP,
	TOGGLE_FREE_QUEST,
	TOGGLE_GOLD_POUCH_ALLOW_ANYTHING,
	TOGGLE_GOLD_POUCH_QUICKLOOT_ONLY,
	TOGGLE_HAZARDSYSTEM,
	TOGGLE_HOUSE_TRANSFER_ON_SERVER_RESTART,
	TOGGLE_IMBUEMENT_NON_AGGRESSIVE_FIGHT_ONLY,
	TOGGLE_IMBUEMENT_SHRINE_STORAGE,
	TOGGLE_MAINTAIN_MODE,
	TOGGLE_MAP_CUSTOM,
	TOGGLE_MOUNT_IN_PZ,
	TOGGLE_RECEIVE_REWARD,
	TOGGLE_SAVE_INTERVAL,
	TOGGLE_SAVE_INTERVAL_CLEAN_MAP,
	TOGGLE_SERVER_IS_RETRO,
	TOGGLE_TRAVELS_FREE,
	TOGGLE_WHEELSYSTEM,
	T_CONST,
	URL,
	USE_ANY_DATAPACK_FOLDER,
	VIP_AUTOLOOT_VIP_ONLY,
	VIP_BONUS_EXP,
	VIP_BONUS_LOOT,
	VIP_BONUS_SKILL,
	VIP_FAMILIAR_TIME_COOLDOWN_REDUCTION,
	VIP_KEEP_HOUSE,
	VIP_STAY_ONLINE,
	VIP_SYSTEM_ENABLED,
	WARN_UNSAFE_SCRIPTS,
	WEATHER_RAIN,
	WEATHER_THUNDER,
	WEEK_KILLS_TO_RED,
	WHEEL_POINTS_PER_LEVEL,
	WHITE_SKULL_TIME,
	WORLD_TYPE,
	XP_DISPLAY_MODE,
};
