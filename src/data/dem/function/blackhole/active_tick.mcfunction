# Rotate and pulse active core
execute as @e[type=text_display,tag=dem_core_display] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[type=text_display,tag=dem_core_display] at @s run tp @s ~ ~ ~ facing entity @p eyes
# Re-schedule
schedule function dem:blackhole/active_tick 4t replace
