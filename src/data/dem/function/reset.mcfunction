# Stop scheduled tasks
schedule clear dem:blackhole/tick
schedule clear dem:shaders/tick
schedule clear dem:effects/ring_particles_tick
schedule clear dem:phase/tick
schedule clear dem:phase/tick_phase0
schedule clear dem:phase/tick_phase1
schedule clear dem:phase/shake_tick
schedule clear dem:formers/lower_tick
schedule clear dem:formers/start_retract
schedule clear dem:formers/start_sequence
schedule clear dem:beams/clear_beacon_here
schedule clear dem:beams/stretch_step
schedule clear dem:blackhole/inactive_tick
schedule clear dem:blackhole/active_tick
schedule clear dem:shaders/disk_tick
schedule clear dem:disk/tick
schedule clear dem:effects/core_shield_tick
schedule clear dem:music/start_ambient

# Remove entities
kill @e[type=marker,tag=dem_blackhole]
kill @e[type=item_display,tag=dem_shader_disk]
kill @e[type=item_display,tag=dem_shader_horizon]
kill @e[type=marker,tag=dem_ring]
execute as @e[type=marker,tag=dem_beam_shooter] at @s run function dem:beams/clear_beacon_here
kill @e[type=item_display,tag=dem_beam]
kill @e[type=item_display,tag=dem_beam_seg]
kill @e[type=item_display,tag=dem_beam_stretch]
kill @e[type=item_display,tag=dem_mass_display]
kill @e[type=item_display,tag=dem_core_display]
kill @e[type=text_display,tag=dem_disk]
kill @e[type=text_display,tag=dem_flag]
kill @e[type=text_display,tag=dem_white_circle]
kill @e[type=text_display,tag=dem_wide_flare]
kill @e[type=text_display,tag=dem_radial_flare]
kill @e[type=item_display,tag=dem_core_shield]
kill @e[type=item_display,tag=dem_former]
scoreboard players set #dem dem.mass 0

# Reset scoreboards
scoreboard players set #dem dem.state 0
scoreboard players set #dem dem.timer 0
scoreboard players set @a dem.trigger 0
scoreboard players set #dem dem.phase 0
scoreboard players set #dem dem.phase_timer 0
scoreboard players set #dem dem.ambient_loops 0

# Stop DEM-related sounds for all players
stopsound @a music terf:music.vladmsorensen_nuclear_midnight
stopsound @a music terf:music.battlejuice_underworld_city_lullaby
stopsound @a music terf:music.battlejuice_berserker
stopsound @a music terf:music.joel_nielsen_the_hunting
stopsound @a music terf:music.joel_nielsen_resonance
stopsound @a music terf:dem.overload_loop
stopsound @a music terf:dem.ambient_loop
stopsound @a master terf:dem.metal
stopsound @a master terf:dem.notification_5
stopsound @a music terf:dem.overload_end
stopsound @a master terf:dem.demboom
stopsound @a ambient terf:explosion.thunder

# Broadcast (styled like dem_broadcasts.txt)
function dem:broadcast {"text":"{\"text\":\"DEM reset complete.\",\"color":\"#FFD090\"}", "level":0}