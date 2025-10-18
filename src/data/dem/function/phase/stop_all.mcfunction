# Stop DEM phase-specific schedulers and loops
schedule clear dem:blackhole/tick
schedule clear dem:shaders/tick
schedule clear dem:effects/ring_particles_tick

# Clear phase-local schedules
schedule clear dem:phase/tick_phase0
schedule clear dem:phase/tick_phase1
schedule clear dem:phase/shake_tick
schedule clear dem:phase/shake_a
schedule clear dem:phase/shake_b
schedule clear dem:phase/berserker_events_tick
schedule clear dem:effects/wide_flare_pulse_tick
schedule clear dem:dust/tick
kill @e[type=item_display,tag=dem_dust]

# Optional: clear lingering sounds
stopsound @a music terf:dem.overload_loop
stopsound @a ambient terf:explosion.thunder
