execute at @s positioned ~ ~1 ~ run function rpg:particles/abilities/healer/heal
execute at @s run effect give @a[distance=0.1..20,sort=nearest,limit=1] minecraft:regeneration 40 7 true