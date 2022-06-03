execute at @e[tag=rpg.healer,limit=1,sort=nearest,type=minecraft:player] positioned ~ ~1 ~ run function rpg:abilities/healer/particles/lullaby
tag @s add rpg.ability.rpg.ability.lullaby
execute as @e[tag=rpg.ability.lullaby,limit=1,sort=nearest] run effect give @e[tag=!rpg.ability.lullaby,distance=0..10] minecraft:slowness
tag @s remove rpg.ability.lullaby