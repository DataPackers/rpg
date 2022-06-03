execute at @e[tag=rpg.healer,limit=1,sort=nearest,type=minecraft:player] positioned ~ ~1 ~ run function rpg:abilities/healer/particles/heal
tag @s add rpg.ability.heal2
execute as @e[tag=rpg.ability.heal2,limit=1,sort=nearest] run effect give @e[tag=!rpg.ability.heal2,limit=1,sort=nearest,type=minecraft:player] minecraft:regeneration 20 3
tag @s remove rpg.ability.heal2