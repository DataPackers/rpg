# Written by Jaegerwald

# Add the scoreboard to store the level data.

scoreboard players add @a rpg.level.class_level 0

# Add the scoreboard for the entity kill cooldown.
scoreboard players set $change_by rpg.level.kills_needed 5
scoreboard players add @a rpg.level.kills_needed 0

# Setup new joined players for the kill cooldown.
execute as @a[scores={rpg.level.kills_needed=0,rpg.level.class_level=0}] run scoreboard players set @s rpg.level.kills_needed 15

# Add the scoreboard to track a entity being killed.
scoreboard players add @a rpg.level.entity_killed 0