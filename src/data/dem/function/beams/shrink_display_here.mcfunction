# Shrink the beam
execute as @e[type=item_display,tag=dem_beam_display,limit=1,sort=nearest] run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:5}
# Despawn shortly after
schedule function dem:beams/kill_display_here 6t replace
