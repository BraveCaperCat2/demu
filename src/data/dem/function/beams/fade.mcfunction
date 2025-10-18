# Shrink and remove beam
execute as @e[type=block_display,tag=dem_beam,limit=1,sort=nearest] run data merge entity @s {transformation:{scale:[0.05f,0.05f,6f]}}
schedule function dem:beams/kill 6t replace
