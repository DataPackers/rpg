advancement revoke @s only rpg:rogue_attack
tag @s add this
execute store result score @s rpg.rotation run data get entity @s Rotation[0]
execute positioned ^ ^ ^1 as @e[nbt={HurtTime:10s},sort=nearest,limit=1] run tag @s add target
execute as @e[tag=target] store result score @s rpg.rotation run data get entity @s Rotation[0]
scoreboard players operation @s rpg.rotation -= @e[tag=target,sort=nearest,limit=1] rpg.rotation
execute if score @s rpg.rotation matches -22..22 run tag @e[tag=target,sort=nearest,limit=1] add targeted
execute if score @s rpg.rotation matches -360..-338 run tag @e[tag=target,sort=nearest,limit=1] add targeted
execute if score @s rpg.rotation matches 338..360 run tag @e[tag=target,sort=nearest,limit=1] add targeted
execute as @e[tag=targeted] store result score @s rpg.rotation run data get entity @s Health
scoreboard players operation @e[tag=targeted,sort=nearest,limit=1] rpg.util.damage = @s rpg.level.class_level
scoreboard players add @e[tag=targeted,sort=nearest,limit=1] rpg.util.damage 2
tag @e[tag=targeted] remove targeted
tag @e[tag=target] remove target
tag @s remove this