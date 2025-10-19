# Subtle camera shake during Phase 1 by alternating tiny yaw/pitch jitters
# Uses dem.phase_timer parity to alternate so it cancels drift

# Odd ticks: small positive jitter
execute if score #dem dem.phase matches 1 if score #dem dem.phase_timer matches 1.. as @a at @s run tp @s ~ ~ ~ ~0.30 ~0.15

# Even ticks: small negative jitter
execute if score #dem dem.phase matches 1 if score #dem dem.phase_timer matches 0.. as @a at @s run tp @s ~ ~ ~ ~-0.30 ~-0.15

# Continue next tick while Phase 1 is active
execute if score #dem dem.phase matches 1 run schedule function dem:phase/shake_tick 1t replace

