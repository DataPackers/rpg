# Written by Jaegerwald

# Add the scoreboard to store the level data.
scoreboard objectives add rpg.player_level dummy "rpg.player_level"
scoreboard players add @a rpg.player_level 0

# Add the scoreboard for the entity kill cooldown.
scoreboard objectives add rpg.kill_counter dummy "rpg.player_level.kill_countdown"
scoreboard players set $change_by rpg.kill_counter 5
scoreboard players add @a rpg.kill_counter 0

# Setup new joined players for the kill cooldown.
execute as @a[scores={rpg.kill_counter=0,rpg.player_level=0}] run scoreboard players set @s rpg.kill_counter 15

# Add the scoreboard to track a entity being killed.
scoreboard objectives add rpg.entity_kill totalKillCount "rpg.player_level.detect_entity_kill"
scoreboard players add @a rpg.entity_kill 0