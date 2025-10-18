# Animate accretion disk segments by rotating them
execute as @e[type=text_display,tag=dem_disk] at @s run tp @s ~ ~ ~ ~1 ~
schedule function dem:shaders/disk_tick 5t replace
