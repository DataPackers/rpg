tag @s remove rpg.util.wither
scoreboard players reset @s rpg.util.damage
effect clear @s wither
scoreboard players operation @s rpg.util.health = @s rpg.util.max_hp
function rpg:util/health/set_attribute