scoreboard players remove @s[scores={rpg.ability_time=1..}] rpg.ability_time 1

execute if score @s rpg.ability matches 1 if score @s rpg.ability_time matches 1.. at @s run function rpg:abilities/rogue/active/invis_aura