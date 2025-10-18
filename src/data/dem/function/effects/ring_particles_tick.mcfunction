# Emit particles at each ring marker to form a horizontal disk
execute as @e[type=marker,tag=dem_ring] at @s run particle dust_color_transition {from_color:[1f,0.8f,0.3f],to_color:[1f,0.6f,0.1f],scale:1f} ~ ~ ~ 0.1 0 0.1 0 6 force
schedule function dem:effects/ring_particles_tick 2t replace

