execute if entity @s store result score dev.log dev.log_warning run scoreboard players get @s dev.log_warning

execute if score dev.log dev.log_warning matches 1 run tellraw @a[tag=dev.developer] ["",{"text":"WARN(1)!","bold":true,"color":"gold"},{"text":" -"},{"selector":"@s"},{"text":"- Deprecated function"}]
execute if score dev.log dev.log_warning matches 2 run tellraw @a[tag=dev.developer] ["",{"text":"WARN(2)!","bold":true,"color":"gold"},{"text":" -"},{"selector":"@s"},{"text":"- Entity should not exist"}]
execute if score dev.log dev.log_warning matches 3 run tellraw @a[tag=dev.developer] ["",{"text":"WARN(3)!","bold":true,"color":"gold"},{"text":" -"},{"selector":"@s"},{"text":"- Target missing or invalid!"}]

scoreboard players reset @s dev.log_warning
scoreboard players reset dev.log dev.log_warning