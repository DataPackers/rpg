# Advance the Player's Level by 1.
scoreboard players add @s rpg.level.class_level 1

# Calculate the amount of entitys needing to be killed, to advance the the next Level.
scoreboard players operation $change_by rpg.level.kills_needed *= @s rpg.level.class_level
scoreboard players add $change_by rpg.level.kills_needed 15

# Display a Message in the Player's Chat, play a sound and show particles.
tellraw @s ["",{"text":"    >>> You advanced to Level ","color":"gray"},{"score":{"name":"@s","objective":"rpg.level.class_level"},"bold":true,"color":"green"},{"text":"! <<<","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.25 0
playsound minecraft:ui.toast.in master @s ~ ~ ~ 100 0
playsound minecraft:ui.toast.out master @s ~ ~ ~ 100 0
playsound minecraft:ui.toast.in master @s ~ ~ ~ 100 2
particle minecraft:cloud ~ ~2 ~ 0 0 0 0.25 500 normal

# Set the Player's Countdown to the amount that was calculated.
scoreboard players operation @s rpg.level.kills_needed = $change_by rpg.level.kills_needed

# Set change_by back to the default number.
scoreboard players set $change_by rpg.level.kills_needed 5