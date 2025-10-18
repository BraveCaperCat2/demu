# Pick random shooter and spawn a display-based beam there
# Choose random shooter from down group and target a random up shooter (and vice versa)
execute if entity @e[type=marker,tag=dem_beam_down] as @e[type=marker,tag=dem_beam_down,limit=1,sort=random] at @s run execute facing entity @e[type=marker,tag=dem_beam_up,limit=1,sort=random] eyes run function dem:beams/one_stretch_current
execute if entity @e[type=marker,tag=dem_beam_up] as @e[type=marker,tag=dem_beam_up,limit=1,sort=random] at @s run execute facing entity @e[type=marker,tag=dem_beam_down,limit=1,sort=random] eyes run function dem:beams/one_stretch_current
