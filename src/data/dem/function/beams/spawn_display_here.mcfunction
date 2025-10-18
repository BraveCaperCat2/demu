# Spawn a display-based beam at executor and aim at blackhole
summon item_display ~ ~ ~ {Tags:["dem_beam","dem_beam_display"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:visual/beam"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.20f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.10f]},interpolation_duration:5}
# Face center
execute as @e[type=item_display,tag=dem_beam_display,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing 56.528 133 118.476
# Start extension and re-aim loop
schedule function dem:beams/advance_display_here 3t replace
