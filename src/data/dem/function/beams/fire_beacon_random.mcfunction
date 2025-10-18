# Pick random shooter and spawn a temporary beacon
execute as @e[type=marker,tag=dem_beam_shooter,limit=1,sort=random] at @s run function dem:beams/spawn_beacon_here
