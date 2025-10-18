# Summon four accretion disk formers (manifold) under the startup rotor center 56 165 118
# Using item_display with model terf:item/visual/dem/manifold
summon item_display 56.528 165 118.476 {Tags:["dem_former","dem_former_n"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/manifold"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-2.5f]},interpolation_duration:5}
summon item_display 56.528 165 118.476 {Tags:["dem_former","dem_former_e"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/manifold"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,0f,0f]},interpolation_duration:5}
summon item_display 56.528 165 118.476 {Tags:["dem_former","dem_former_s"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/manifold"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,2.5f]},interpolation_duration:5}
summon item_display 56.528 165 118.476 {Tags:["dem_former","dem_former_w"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/manifold"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,0f,0f]},interpolation_duration:5}

# Begin lower sequence over ~1600t (half of 3220)
schedule function dem:formers/lower_tick 5t replace
