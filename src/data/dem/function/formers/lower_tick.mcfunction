# Lower formers gradually and spin with end rod particles; stop at Y=133
execute as @e[type=item_display,tag=dem_former] if entity @s[y=133..] at @s run tp @s ~ ~-0.05 ~ ~6 ~
execute as @e[type=item_display,tag=dem_former] at @s run particle end_rod ~ ~ ~ 0.12 0.12 0.12 0 3 force

# Broadcast cues while lowering (every ~40t) styled like dem_broadcasts.txt
execute if score dem.timer matches 40..40 run function dem:broadcast {"text":"{\"text\":\"Lowering accretion formers...\",\"color\":\"#ffD090"}", "level":0}

schedule function dem:formers/lower_tick 5t replace
