# Spawn one beam using current facing (no core targeting) and stretch it
summon item_display ~ ~ ~ {Tags:["dem_beam","dem_beam_display"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:visual/beam"}},brightness:{sky:0,block:0},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.20f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.10f]},interpolation_duration:5}
# Start extension
schedule function dem:beams/advance_display_here 3t replace
