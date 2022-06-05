execute as @e[scores={dev.log.error=1..}] run function devtools:log/error
execute as @e[scores={dev.log.warning=1..}] run function devtools:log/warning

execute if score dev.log dev.log.error matches 1.. run function devtools:log/error
execute if score dev.log dev.log.warning matches 1.. run function devtools:log/warning