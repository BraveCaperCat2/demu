# Transition from Phase 0 to Phase 1: stop old, start berserker and dust field
function dem:phase/stop_all

playsound terf:dem.notification_4 ambient @a ~ ~ ~ 1 1 1
tellraw @a ["",{"text":":dem_os: ","color":"black"},{"text":"[DEM] » "},{"text":"Severe accretion disk instability detected.","color":"#ffD090"}]

# Start Berserker track on music channel for all players, force audibility
playsound terf:music.battlejuice_berserker music @a ~ ~ ~ 1 1 1

# Reset phase state and start tick loop for Phase 1 visuals
scoreboard players set #dem dem.phase 1
scoreboard players set #dem dem.phase_timer 0
schedule function dem:phase/tick_phase1 1t replace

# Start subtle screenshake loop
schedule function dem:phase/shake_a 1t replace

# Increase accretion disk spin speed during berserker
schedule function dem:disk/tick 1t replace

# Start wide flare pulsing during berserker
schedule function dem:effects/wide_flare_pulse_tick 10t replace

# Summon and animate dust field around blackhole
function dem:dust/summon
schedule function dem:dust/tick 1t replace

