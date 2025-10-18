# Animate core shield layers for blackhole shield illusion
# Rotate the core shield layers to create dynamic effect
execute as @e[type=item_display,tag=dem_core_shield] at @s run tp @s ~ ~ ~ ~3 ~
schedule function dem:effects/core_shield_tick 10t replace
