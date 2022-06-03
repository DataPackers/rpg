effect give @e[distance=0..6,type=minecraft:player] minecraft:weakness 20 4
effect give @e[distance=0..6,type=minecraft:player] minecraft:resistance 20 4
execute at @e[tag=rpg.healer,limit=1,sort=nearest,type=minecraft:player] positioned ~ ~1 ~ run function rpg:abilities/healer/particles/sanctuary