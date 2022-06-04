# This is the function where we add any custom scoreboard objectives we need
# Scoreboard objectives we create should be prefixed with rpg
# eg. a health objectives would be named rpg.health etc.

scoreboard objectives add rpg.health health
scoreboard objectives add rpg.hunger dummy
scoreboard objectives add rpg.death deathCount

# Player ID
scoreboard objectives add rpg.player_id dummy
scoreboard objectives add rpg.target_id dummy

# Statuses
scoreboard objectives add rpg.status.stunned dummy
scoreboard objectives add rpg.status.drained dummy
scoreboard objectives add rpg.status.shielded dummy
scoreboard objectives add rpg.status.prone dummy
scoreboard objectives add rpg.status.stealth dummy
