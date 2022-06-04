# Written by Jaegerwald

# Set the detection to 0 and remove 1 from the countdown.
scoreboard players set @s rpg.level.entity_killed 0
scoreboard players remove @s rpg.level.kills_needed 1

# If the right amount of entities has been killed, advance the Player's Level.
execute as @s at @s if score @s rpg.level.kills_needed matches 0 run function rpg:level/advance