# Phase 0 loop: increment timer, ash ceiling over players, transition at 2420t
scoreboard players add #dem dem.phase_timer 1

# No continuous rain; ash was spawned once at start

# Loop every tick for smooth effect
schedule function dem:phase/tick_phase0 1t replace

# Transition to Phase 1 after 2460t (2:03)
execute if score #dem dem.phase_timer matches 2460.. run function dem:phase/start_phase1_sequence

