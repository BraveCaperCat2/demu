# Summon blackhole shield illusion using core_colored.json
# Multiple layers of core_colored model with black coloring to cover the white circle
# Positioned in the middle layer (Z=0)
# First layer - black cores (lots of them to cover the white circle)
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_black"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.8f,1.8f,1.8f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:2}
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_black"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.1f,1.1f,1.1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0f,0f]},interpolation_duration:2}
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_black"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.0f,1.0f,1.0f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,0f,0f]},interpolation_duration:2}
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_black"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.9f,0.9f,0.9f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f]},interpolation_duration:2}
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_black"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f]},interpolation_duration:2}

# Second layer - white cores (fewer, smoother overlay)
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_white"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.4f,1.4f,1.4f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.01f]},interpolation_duration:2}
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_white"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],right_rotation:[0f,0f,0f,1f],translation:[0.05f,0f,0.01f]},interpolation_duration:2}
summon item_display 56.528 133 118.476 {Tags:["dem_core_shield","dem_core_white"],item:{id:"minecraft:stick",components:{"minecraft:item_model":"terf:item/visual/dem/core"}},brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.6f,0.6f,0.6f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,0f,0.01f]},interpolation_duration:2}

schedule function dem:effects/core_shield_tick 10t replace
