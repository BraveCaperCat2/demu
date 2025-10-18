# Phase loop
scoreboard players add #dem dem.phase_timer 1

# Phase 0: handled by start_phase0 and its tick; nothing to start here

# Phase 1: intro then loop
execute if score #dem dem.phase matches 1 if score #dem dem.phase_timer matches 1 run function dem:phase/start_phase1

# Phase 2: begin + loop + heavy effects
execute if score #dem dem.phase matches 2 if score #dem dem.phase_timer matches 1 run function dem:phase/start_phase2

# Reschedule
schedule function dem:phase/tick 5t replace
