function rpg:misc/_tick
execute as @a[scores={rpg.death=1..}] run function rpg:death
