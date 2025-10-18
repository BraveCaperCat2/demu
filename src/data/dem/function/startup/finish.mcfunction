# Finish DEM startup
function dem:broadcast {"text":"{\"text\":\"Singularity formed.\"}", "level":0}
scoreboard players set #dem dem.state 0
# Start ambient loop ticker 1800t after finish (add to reach 3600t from startup start if needed)
schedule function dem:music/ambient_loop_tick 3600t replace
# Begin Phase 0 after 3m30s = 4200t wait
schedule function dem:phase/start_phase0 4200t replace

# Reset ambient loop counter when starting the sequence
scoreboard players set #dem dem.ambient_loops 0

