# Spawn one beam and stretch it smoothly toward the blackhole
# Face target
execute positioned ~ ~ ~ run tp @s ~ ~ ~ facing 56.528 133 118.476
# Spawn display at shooter with tiny length
summon item_display ~ ~ ~ {Tags:["dem_beam","dem_beam_stretch"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:visual/beam"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.2f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.05f]},interpolation_duration:2}
# Orient the beam
execute as @e[type=item_display,tag=dem_beam_stretch,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing 56.528 133 118.476
# Initialize step counter
scoreboard objectives add dem.beam_step dummy
scoreboard players set @e[type=item_display,tag=dem_beam_stretch] dem.beam_step 0
# Begin stretch loop
schedule function dem:beams/stretch_step 2t replace
