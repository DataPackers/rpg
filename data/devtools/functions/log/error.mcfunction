execute if entity @s store result score dev.log dev.log.error run scoreboard players get @s dev.log.error

execute if score dev.log dev.log.error matches 1 run tellraw @a[tag=dev.developer] ["",{"text":"ERROR(1)!","bold":true,"color":"dark_red"},{"text":" -"},{"selector":"@s"},{"text":"- Unexpected error occurred"}]
execute if score dev.log dev.log.error matches 2 run tellraw @a[tag=dev.developer] ["",{"text":"ERROR(2)!","bold":true,"color":"dark_red"},{"text":" -"},{"selector":"@s"},{"text":"- Entity does not exist!"}]
execute if score dev.log dev.log.error matches 3 run tellraw @a[tag=dev.developer] ["",{"text":"ERROR(3)!","bold":true,"color":"dark_red"},{"text":" -"},{"selector":"@s"},{"text":"- Entity exists!"}]
execute if score dev.log dev.log.error matches 4 run tellraw @a[tag=dev.developer] ["",{"text":"ERROR(4)!","bold":true,"color":"dark_red"},{"text":" -"},{"selector":"@s"},{"text":"- Math error"}]
execute if score dev.log dev.log.error matches 5 run tellraw @a[tag=dev.developer] ["",{"text":"ERROR(5)!","bold":true,"color":"dark_red"},{"text":" -"},{"selector":"@s"},{"text":"- Tag missing or incorrect"}]
execute if score dev.log dev.log.error matches 6 run tellraw @a[tag=dev.developer] ["",{"text":"ERROR(6)!","bold":true,"color":"dark_red"},{"text":" -"},{"selector":"@s"},{"text":"- Scoreboard value missing or incorrect"}]

scoreboard players reset @s dev.log.error
scoreboard players reset dev.log dev.log.error