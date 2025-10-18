# Spin the accretion disk by rotating glyph displays (inner faster, outer slower)
execute as @e[type=text_display,tag=dem_disk_seg1] at @s run tp @s ~ ~ ~ ~2.0 ~
execute as @e[type=text_display,tag=dem_disk_seg2] at @s run tp @s ~ ~ ~ ~1.7 ~
execute as @e[type=text_display,tag=dem_disk_seg3] at @s run tp @s ~ ~ ~ ~1.4 ~
execute as @e[type=text_display,tag=dem_disk_seg4] at @s run tp @s ~ ~ ~ ~1.1 ~
execute as @e[type=text_display,tag=dem_disk_seg5] at @s run tp @s ~ ~ ~ ~0.8 ~
schedule function dem:disk/tick 1t replace

