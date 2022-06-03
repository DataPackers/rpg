# Written by Jaegerwald

# Set the detection to 0 and remove 1 from the countdown.
scoreboard players set @s rpg.entity_kill 0
scoreboard players remove @s rpg.kill_counter 1

# If the amount of entitys has been killed, advance the Player's Level by 1.
execute if score @s rpg.kill_counter matches 0 run scoreboard players add @s rpg.player_level 1

# Calculate the amount of entitys needing to be killed, to advance the the next Level.
execute if score @s rpg.kill_counter matches 0 run scoreboard players operation $change_by rpg.kill_counter *= @s rpg.player_level
execute if score @s rpg.kill_counter matches 0 run scoreboard players add $change_by rpg.kill_counter 15

# Display a Message in the Player's Chat, play a sound and show particles.
execute if score @s rpg.kill_counter matches 0 run tellraw @s ["",{"text":"    >>> You advanced to Level ","color":"gray"},{"score":{"name":"@s","objective":"rpg.player_level"},"bold":true,"color":"green"},{"text":"! <<<","color":"gray"}]
execute at @s if score @s rpg.kill_counter matches 0 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.25 0
execute at @s if score @s rpg.kill_counter matches 0 run playsound minecraft:ui.toast.in master @s ~ ~ ~ 100 0
execute at @s if score @s rpg.kill_counter matches 0 run playsound minecraft:ui.toast.out master @s ~ ~ ~ 100 0
execute at @s if score @s rpg.kill_counter matches 0 run playsound minecraft:ui.toast.in master @s ~ ~ ~ 100 2
execute at @s if score @s rpg.kill_counter matches 0 run particle minecraft:cloud ~ ~2 ~ 0 0 0 0.25 500 normal

# Set the Player's Countdown to the amount that was calculated.
execute if score @s rpg.kill_counter matches 0 run scoreboard players operation @s rpg.kill_counter = $change_by rpg.kill_counter

# Set changBy back to the default number.
scoreboard players set $change_by rpg.kill_counter 5