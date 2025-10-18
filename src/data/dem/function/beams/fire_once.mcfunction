# Fire one beam from a random shooter to the blackhole center
# Compute direction implicitly by placing a long thin model and rotating with tp yaw
execute as @e[type=marker,tag=dem_beam_shooter,limit=1,sort=random] at @s run summon block_display ~ ~ ~ {Tags:["dem_beam"],block_state:{Name:"minecraft:barrier"},model:"minecraft:block/iron_bars",transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.1f,0.1f,12f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:10}
# point yaw toward center (x,z): 56.528,118.476
execute as @e[type=block_display,tag=dem_beam,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing 56.528 133 118.476
# shrink over time then remove
schedule function dem:beams/fade 8t replace
