# Pulsate wide flare alpha by toggling color between faint and slightly stronger
execute as @e[type=text_display,tag=dem_wide_flare] at @s if score #dem dem.phase matches 1 if score #dem dem.phase_timer matches 0.. run data modify entity @s text set value '{"text":"\ueff7","font":"minecraft:default","color":"#00FFFFFF"}'
execute as @e[type=text_display,tag=dem_wide_flare] at @s if score #dem dem.phase matches 1 if score #dem dem.phase_timer matches 10.. run data modify entity @s text set value '{"text":"\ueff7","font":"minecraft:default","color":"#11FFFFFF"}'

# Reschedule while Phase 1 is active
execute if score #dem dem.phase matches 1 run schedule function dem:effects/wide_flare_pulse_tick 10t replace

