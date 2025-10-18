# Phase 1 loop: increment timer, spawn dense dust clusters around players, transition at 7880t
scoreboard players add #dem dem.phase_timer 1

# Spawn clustered dust around players and at blackhole location to fill the scene
# Around players (favor ultra density)
execute as @a at @s run particle ash ~ ~ ~ 50 50 50 0.02 30 force
execute as @a at @s run particle ash ~ ~ ~ 50 50 50 0.02 90 force
# At blackhole anchor (56.528 133 118.476) covering a wide volume
execute positioned 56.528 133 118.476 run particle ash ~ ~ ~ 60 30 60 0.02 120 force

# Cinematic broadcast pulses from dem_broadcasts.txt style (every ~20s)
execute if score #dem dem.phase_timer matches 400..400 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-E Engaging!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 800..800 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-W Engaging!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 1200..1200 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-N Engaging!","color":"#ffD090"}]
execute if score #dem dem.phase_timer matches 1600..1600 run tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Stabilizer D-S Engaging!","color":"#ffD090"}]

# Loop every tick for smooth effect
schedule function dem:phase/tick_phase1 1t replace

# Transition to Phase 2 after 7880 ticks
execute if score #dem dem.phase_timer matches 7880.. run function dem:phase/start_phase2_sequence

# Berserker chaos loop: strikes and broadcasts paced across the whole track
function dem:phase/berserker_events_tick

