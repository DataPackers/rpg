execute at @e[tag=rpg.healer,limit=1,sort=nearest,type=minecraft:player] positioned ~ ~1 ~ run function rpg:abilities/healer/particles/cleanse
tag @s add rpg.ability.cleanse
execute as @e[tag=rpg.ability.cleanse,limit=1,sort=nearest] run effect clear @e[tag=!rpg.ability.cleanse,limit=1,sort=nearest,type=minecraft:player] minecraft:weakness
execute as @e[tag=rpg.ability.cleanse,limit=1,sort=nearest] run effect clear @e[tag=!rpg.ability.cleanse,limit=1,sort=nearest,type=minecraft:player] minecraft:blindness
execute as @e[tag=rpg.ability.cleanse,limit=1,sort=nearest] run effect clear @e[tag=!rpg.ability.cleanse,limit=1,sort=nearest,type=minecraft:player] minecraft:slowness
execute as @e[tag=rpg.ability.cleanse,limit=1,sort=nearest] run effect clear @e[tag=!rpg.ability.cleanse,limit=1,sort=nearest,type=minecraft:player] minecraft:poison
execute as @e[tag=rpg.ability.cleanse,limit=1,sort=nearest] run effect clear @e[tag=!rpg.ability.cleanse,limit=1,sort=nearest,type=minecraft:player] minecraft:wither
tag @s remove rpg.ability.cleanse