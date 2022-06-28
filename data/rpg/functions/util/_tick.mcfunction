execute as @e[tag=rpg.util.wither] run function rpg:util/health/clear_effects
execute as @e[scores={rpg.util.damage=1..}] run function rpg:util/health/damage
