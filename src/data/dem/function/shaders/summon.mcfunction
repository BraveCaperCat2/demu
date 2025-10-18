# Summon client-side shader anchors (item_display) at the blackhole coords
## Removed old block_display anchors to avoid missing-texture error box

# Inner mass replaced by text_display black circle for consistency
summon text_display 56.528 133 118.476 {Tags:["dem_shader_mass"],text:'{"text":"\ueeda","font":"minecraft:default","color":"#000000"}',see_through:1b,background:0,transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.6f,1.6f,1.6f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.02f]},interpolation_duration:1}

