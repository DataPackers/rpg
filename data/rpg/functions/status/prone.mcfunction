attribute @s generic.max_health base set 4
effect give @s instant_health 1 0 true

execute as @s[scores={rpg.prone=..1}] run attribute @s generic.max_health base set 20
execute as @s[scores={rpg.prone=..1}] run effect give @s regeneration 5 1 true
scoreboard players remove @s rpg.prone 1