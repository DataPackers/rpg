execute as @s[scores={rpg.status.prone=1..}] run attribute @s generic.max_health base set 20

scoreboard players reset @s rpg.status.drained
scoreboard players reset @s rpg.status.stunned
scoreboard players reset @s rpg.status.shielded
scoreboard players reset @s rpg.status.prone
scoreboard players reset @s rpg.status.stealth