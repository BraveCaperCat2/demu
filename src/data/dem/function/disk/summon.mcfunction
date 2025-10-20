# Summon accretion disk using animated disc segments (from assets/minecraft/font/dem/disc)
# Chars: \ueed0-\ueed4

# Segment 1 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg1"],text:'{"text":"\ueed0","font":"minecraft:default","color":"white"}',see_through:0b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.60f,0.60f,0.60f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.000f]},interpolation_duration:2}

# Segment 2 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg2"],text:'{"text":"\ueed1","font":"minecraft:default","color":"white"}',see_through:0b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.70f,0.70f,0.70f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.005f]},interpolation_duration:2}

# Segment 3 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg3"],text:'{"text":"\ueed2","font":"minecraft:default","color":"white"}',see_through:0b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.80f,0.80f,0.80f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.010f]},interpolation_duration:2}

# Segment 4 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg4"],text:'{"text":"\ueed3","font":"minecraft:default","color":"white"}',see_through:0b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.90f,0.90f,0.90f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.015f]},interpolation_duration:2}

# Segment 5 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg5"],text:'{"text":"\ueed4","font":"minecraft:default","color":"white"}',see_through:0b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[1.00f,1.00f,1.00f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.020f]},interpolation_duration:2}

# Underside copies (flipped glyphs) so disk is visible from below
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg1","dem_disk_flip"],text:'{"text":"\ueed5","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],scale:[0.60f,0.60f,0.60f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.005f]},interpolation_duration:2}
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg2","dem_disk_flip"],text:'{"text":"\ueed6","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],scale:[0.70f,0.70f,0.70f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.010f]},interpolation_duration:2}
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg3","dem_disk_flip"],text:'{"text":"\ueed7","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],scale:[0.80f,0.80f,0.80f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.015f]},interpolation_duration:2}
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg4","dem_disk_flip"],text:'{"text":"\ueed8","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],scale:[0.90f,0.90f,0.90f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.020f]},interpolation_duration:2}
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg5","dem_disk_flip"],text:'{"text":"\ueed9","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],scale:[1.00f,1.00f,1.00f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.025f]},interpolation_duration:2}

schedule function dem:disk/tick 5t replace

