# Summon active blackhole core as a black circle (text_display) and start spin
kill @e[type=item_display,tag=dem_mass_display]
kill @e[type=item_display,tag=dem_core_display]
kill @e[type=text_display,tag=dem_core_display]
summon text_display 56.528 133 118.476 {Tags:["dem_core_display"],text:'\ueeda',see_through:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],scale:[1.8f,1.8f,1.8f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.06f]},interpolation_duration:2}
schedule function dem:blackhole/active_tick 5t replace
