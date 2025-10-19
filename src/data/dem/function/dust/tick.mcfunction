# Animate dust: slow rotation and size pulsing for chaos
execute as @e[type=item_display,tag=dem_dust] at @s run tp @s ~ ~ ~ ~0.7 ~
execute as @e[type=item_display,tag=dem_dust_outer] at @s run tp @s ~ ~ ~ ~1.0 ~

# Pulse scale subtly
execute if score #dem dem.phase_timer matches 0.. as @e[type=item_display,tag=dem_dust] run data modify entity @s transformation.scale set value [1.6f,1.6f,1.6f]
execute if score #dem dem.phase_timer matches 10.. as @e[type=item_display,tag=dem_dust] run data modify entity @s transformation.scale set value [1.4f,1.4f,1.4f]

schedule function dem:dust/tick 1t replace

