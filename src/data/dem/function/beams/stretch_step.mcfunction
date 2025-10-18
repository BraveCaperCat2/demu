# Increase beam length in small steps to avoid gaps
execute as @e[type=item_display,tag=dem_beam_stretch] run scoreboard players add @s dem.beam_step 1
# Compute scale Z = 0.5 + step * 0.8 (approx), clamp to 20
execute as @e[type=item_display,tag=dem_beam_stretch,scores={dem.beam_step=..20}] run data merge entity @s {transformation:{scale:[0.5f,0.5f,12f],translation:[0f,0f,6f]},interpolation_duration:2}
# Keep aiming toward center in case of drift
execute as @e[type=item_display,tag=dem_beam_stretch] at @s run tp @s ~ ~ ~ facing 56.528 133 118.476
# Continue until step cap
execute if entity @e[type=item_display,tag=dem_beam_stretch,scores={dem.beam_step=..20}] run schedule function dem:beams/stretch_step 2t replace
