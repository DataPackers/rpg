execute store result score @s rpg.util.health run data get entity @s Health
scoreboard players operation @s rpg.util.health -= @s rpg.util.damage
execute store result score @s rpg.util.max_hp run attribute @s minecraft:generic.max_health base get
function rpg:util/health/set_attribute
effect give @s wither 1 1 true
tag @s add rpg.util.wither
