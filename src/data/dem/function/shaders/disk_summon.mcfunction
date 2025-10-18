# Summon accretion disk using animated disc segments
# Disc segments: \ueed0-\ueed4 (normal) and \ueed5-\ueed9 (flipped)
# Each segment represents 1/5 of the disk rotation

# Segment 1 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg1"],text:'{"text":"\ueed0","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.18f,0.18f,0.18f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:2}

# Segment 2 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg2"],text:'{"text":"\ueed1","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.18f,0.18f,0.18f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:2}

# Segment 3 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg3"],text:'{"text":"\ueed2","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.18f,0.18f,0.18f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:2}

# Segment 4 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg4"],text:'{"text":"\ueed3","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.18f,0.18f,0.18f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:2}

# Segment 5 (bigger)
summon text_display 56.528 133 118.476 {Tags:["dem_disk","dem_disk_seg5"],text:'{"text":"\ueed4","font":"minecraft:default","color":"white"}',see_through:1b,background:0,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],scale:[0.18f,0.18f,0.18f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:2}

schedule function dem:shaders/disk_tick 5t replace
