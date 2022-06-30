tp ^ ^1 ^3
execute at @s run scoreboard players operation @a[distance=0.1..2] rpg.status.stunned = @s rpg.level.class_level
execute at @s run scoreboard players add @a[distance=0.1..2] rpg.status.stunned 2
scoreboard players set @s rpg.status.tired 5