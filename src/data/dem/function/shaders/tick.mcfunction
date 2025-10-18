# Keep shader anchors aligned and rotate them
execute as @e[type=item_display,tag=dem_shader_disk,limit=1] at @s run tp @s 56.528 133 118.476 ~6 ~
execute as @e[type=item_display,tag=dem_shader_horizon,limit=1] at @s run tp @s 56.528 133 118.476 ~10 ~
execute as @e[type=item_display,tag=dem_shader_mass,limit=1] at @s run tp @s 56.528 133 118.476 ~4 ~

# optional particles to visualize the disk plane
execute as @e[type=item_display,tag=dem_shader_disk,limit=1] at @s run particle dust_color_transition {from_color:[0.6f,0.2f,1f],to_color:[0.2f,0f,0.3f],scale:1f} ~ ~ ~ 2.5 0 2.5 0 8 force

schedule function dem:shaders/tick 5t replace

