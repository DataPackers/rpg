execute as @s[scores={rpg.prone=1..}] run attribute @s generic.max_health base set 20

scoreboard players reset @s rpg.drained
scoreboard players reset @s rpg.status.stunned
scoreboard players reset @s rpg.shielded
scoreboard players reset @s rpg.prone
scoreboard players reset @s rpg.stealth