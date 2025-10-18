# DEM tick: handle trigger and sequence
# Start when any player sets trigger to 1
execute as @a[scores={dem.trigger=1..}] run function dem:startup/start

# Continuously enable trigger objective for all players
scoreboard players enable @a dem.trigger

