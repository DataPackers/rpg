effect give @e[distance=0..7,type=minecraft:player] minecraft:absorption 60 2
execute at @e[tag=rpg.healer,limit=1,sort=nearest,type=minecraft:player] positioned ~ ~1 ~ run function rpg:abilities/healer/particles/bless