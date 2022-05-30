execute as @e[scores={dev.log_error=1..}] run function devtools:log/error
execute as @e[scores={dev.log_warning=1..}] run function devtools:log/warning

execute if score dev.log dev.log_error matches 1.. run function devtools:log/error
execute if score dev.log dev.log_warning matches 1.. run function devtools:log/warning