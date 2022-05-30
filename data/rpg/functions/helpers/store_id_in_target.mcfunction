# Debug checks
execute unless entity @e[tag=rpg.target] run scoreboard players set @s dev.log_warning 3
execute unless entity @s[scores={rpg.player_id=1..}] run scoreboard players set @s dev.log_error 6

execute at @s store result score @e[tag=rpg.target,limit=1,sort=nearest] rpg.target_id run scoreboard players get @s rpg.player_id

tag @e remove rpg.target