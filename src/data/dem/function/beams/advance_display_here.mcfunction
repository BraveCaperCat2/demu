# Extend the nearest display beam forward by scaling Z
execute as @e[type=item_display,tag=dem_beam_display,limit=1,sort=nearest] run data merge entity @s {transformation:{scale:[0.35f,0.35f,8f]},interpolation_duration:5}
# Small impact sound at center
playsound terf:dem.laser_humming master @a[distance=..80]
# Schedule shrink
schedule function dem:beams/shrink_display_here 10t replace
